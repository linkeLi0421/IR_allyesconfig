; ModuleID = '/llk/IR_all_yes/drivers/bus/qcom-ebi2.c_pt.bc'
source_filename = "../drivers/bus/qcom-ebi2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cs_data = type { i32, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.ebi2_xmem_prop = type { ptr, i32, i8, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_qcom_ebi2__187_403_qcom_ebi2_driver_init6 = internal global ptr @qcom_ebi2_driver_init, section ".initcall6.init", align 4
@qcom_ebi2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_ebi2_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_ebi2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_ebi2_driver_exit = internal global ptr @qcom_ebi2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [58 x i8] c"qcom_ebi2.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [43 x i8] c"qcom_ebi2.description=Qualcomm EBI2 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [37 x i8] c"qcom_ebi2.file=drivers/bus/qcom-ebi2\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [22 x i8] c"qcom_ebi2.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom-ebi2\00", [22 x i8] zeroinitializer }, align 32
@qcom_ebi2_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8660-ebi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8060-ebi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ebi2x\00", [26 x i8] zeroinitializer }, align 32
@qcom_ebi2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 312, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not enable EBI2X clk (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_ebi2_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/bus/qcom-ebi2.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_ebi2_probe._entry_ptr = internal global ptr @qcom_ebi2_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ebi2\00", [27 x i8] zeroinitializer }, align 32
@qcom_ebi2_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 324, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not enable EBI2 clk\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_ebi2_probe._entry_ptr.10 = internal global ptr @qcom_ebi2_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@qcom_ebi2_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 364, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid chipselect %u, we only support 0-5\0A\00", [52 x i8] zeroinitializer }, align 32
@qcom_ebi2_probe._entry_ptr.14 = internal global ptr @qcom_ebi2_probe._entry.12, section ".printk_index", align 4
@cs_info = internal constant { [6 x %struct.cs_data], [48 x i8] } { [6 x %struct.cs_data] [%struct.cs_data { i32 3, i16 8, i16 40 }, %struct.cs_data { i32 12, i16 12, i16 44 }, %struct.cs_data { i32 16, i16 16, i16 48 }, %struct.cs_data { i32 32, i16 20, i16 52 }, %struct.cs_data { i32 192, i16 24, i16 56 }, %struct.cs_data { i32 768, i16 28, i16 60 }], [48 x i8] zeroinitializer }, align 32
@qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom_ebi2\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom_ebi2_setup_chipselect\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enabled CS%u\0A\00", [18 x i8] zeroinitializer }, align 32
@xmem_props = internal constant { [9 x %struct.ebi2_xmem_prop], [52 x i8] } { [9 x %struct.ebi2_xmem_prop] [%struct.ebi2_xmem_prop { ptr @.str.26, i32 15, i8 1, i16 28 }, %struct.ebi2_xmem_prop { ptr @.str.27, i32 15, i8 1, i16 24 }, %struct.ebi2_xmem_prop { ptr @.str.28, i32 255, i8 1, i16 16 }, %struct.ebi2_xmem_prop { ptr @.str.29, i32 255, i8 1, i16 8 }, %struct.ebi2_xmem_prop { ptr @.str.30, i32 15, i8 1, i16 4 }, %struct.ebi2_xmem_prop { ptr @.str.31, i32 15, i8 1, i16 0 }, %struct.ebi2_xmem_prop { ptr @.str.32, i32 1, i8 0, i16 5 }, %struct.ebi2_xmem_prop { ptr @.str.33, i32 3, i8 0, i16 16 }, %struct.ebi2_xmem_prop { ptr @.str.34, i32 15, i8 0, i16 24 }], [52 x i8] zeroinitializer }, align 32
@qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.4, ptr @.str.18, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not read %s for CS%d\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.4, ptr @.str.19, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set %s flag\0A\00", [19 x i8] zeroinitializer }, align 32
@qcom_ebi2_setup_chipselect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.4, i32 273, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"too high value for %s: %u, capped at %u\0A\00", [55 x i8] zeroinitializer }, align 32
@qcom_ebi2_setup_chipselect._entry_ptr = internal global ptr @qcom_ebi2_setup_chipselect._entry, section ".printk_index", align 4
@qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.4, ptr @.str.21, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set %s to %u\0A\00", [18 x i8] zeroinitializer }, align 32
@qcom_ebi2_setup_chipselect._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.4, i32 284, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CS%u: SLOW CFG 0x%08x, FAST CFG 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qcom_ebi2_setup_chipselect._entry_ptr.25 = internal global ptr @qcom_ebi2_setup_chipselect._entry.22, section ".printk_index", align 4
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom,xmem-recovery-cycles\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom,xmem-write-hold-cycles\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qcom,xmem-write-delta-cycles\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom,xmem-read-delta-cycles\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom,xmem-write-wait-cycles\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom,xmem-read-wait-cycles\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qcom,xmem-address-hold-enable\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"qcom,xmem-adv-to-oe-recovery-cycles\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom,xmem-read-hold-cycles\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"qcom_ebi2_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 396, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 399, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"qcom_ebi2_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 390, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 306, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 312, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 316, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 324, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 355, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 362, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [8 x i8] c"cs_info\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 114, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 242, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"xmem_props\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 169, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 254, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 265, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 271, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 280, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 283, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 171, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 177, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 183, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 189, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 195, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 201, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 207, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 213, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [27 x i8] c"../drivers/bus/qcom-ebi2.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 219, i32 11 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_qcom_ebi2_driver_exit, ptr @__initcall__kmod_qcom_ebi2__187_403_qcom_ebi2_driver_init6, ptr @qcom_ebi2_driver_exit, ptr @qcom_ebi2_probe._entry, ptr @qcom_ebi2_probe._entry.12, ptr @qcom_ebi2_probe._entry.8, ptr @qcom_ebi2_probe._entry_ptr, ptr @qcom_ebi2_probe._entry_ptr.10, ptr @qcom_ebi2_probe._entry_ptr.14, ptr @qcom_ebi2_setup_chipselect._entry, ptr @qcom_ebi2_setup_chipselect._entry.22, ptr @qcom_ebi2_setup_chipselect._entry_ptr, ptr @qcom_ebi2_setup_chipselect._entry_ptr.25, ptr @qcom_ebi2_driver, ptr @.str, ptr @qcom_ebi2_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @cs_info, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @xmem_props, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ebi2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ebi2_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ebi2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ebi2_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ebi2_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xmem_props to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ebi2_setup_chipselect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ebi2_setup_chipselect._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ebi2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_ebi2_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_ebi2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_ebi2_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_ebi2_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %csindex = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  br label %cleanup56

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end7, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i.ph) #9
  br label %cleanup56

if.end7:                                          ; preds = %if.end.i
  %call8 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  %cmp.i107 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call8 to i32
  br label %err_disable_2x_clk

if.end12:                                         ; preds = %if.end7
  %call.i108 = tail call i32 @clk_prepare(ptr noundef %call8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool.not.i109 = icmp eq i32 %call.i108, 0
  br i1 %tobool.not.i109, label %if.end.i112, label %if.end12.do.end18_crit_edge

if.end12.do.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

if.end.i112:                                      ; preds = %if.end12
  %call1.i110 = tail call i32 @clk_enable(ptr noundef %call8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i110)
  %tobool2.not.i111 = icmp eq i32 %call1.i110, 0
  br i1 %tobool2.not.i111, label %if.end19, label %if.then3.i113

if.then3.i113:                                    ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call8) #6
  br label %do.end18

do.end18:                                         ; preds = %if.then3.i113, %if.end12.do.end18_crit_edge
  %retval.0.i114.ph = phi i32 [ %call1.i110, %if.then3.i113 ], [ %call.i108, %if.end12.do.end18_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %err_disable_2x_clk

if.end19:                                         ; preds = %if.end.i112
  %call20 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call21 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call20) #6
  %cmp.i116 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.end19.err_disable_clk_crit_edge, label %if.end25

if.end19.err_disable_clk_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_clk

if.end25:                                         ; preds = %if.end19
  %call26 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %call27 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call26) #6
  %cmp.i117 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %if.end25.err_disable_clk_crit_edge, label %do.body32

if.end25.err_disable_clk_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_clk

do.body32:                                        ; preds = %if.end25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call27, i32 0) #6, !srcloc !93
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call21) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %5 = and i32 %4, 16580607
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call21, i32 %5) #6, !srcloc !93
  %call40 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #6
  %cmp.not131 = icmp eq ptr %call40, null
  br i1 %cmp.not131, label %do.body32.cleanup56_crit_edge, label %do.body32.for.body.outer_crit_edge

do.body32.for.body.outer_crit_edge:               ; preds = %do.body32
  br label %for.body.outer

do.body32.cleanup56_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %do.body32.for.body.outer_crit_edge
  %child.0133.ph = phi ptr [ %call51137, %for.inc.thread.for.body.outer_crit_edge ], [ %call40, %do.body32.for.body.outer_crit_edge ]
  %have_children.0.off0132.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %do.body32.for.body.outer_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %child.0133 = phi ptr [ %call51, %for.inc.for.body_crit_edge ], [ %child.0133.ph, %for.body.outer ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csindex) #6
  %6 = ptrtoint ptr %csindex to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %csindex, align 4, !annotation !97
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0133, ptr noundef nonnull @.str.11, ptr noundef nonnull %csindex, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool42.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool42.not, label %if.end44, label %cleanup

if.end44:                                         ; preds = %for.body
  %7 = ptrtoint ptr %csindex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %csindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp45 = icmp ugt i32 %8, 5
  br i1 %cmp45, label %for.inc, label %for.inc.thread

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %child.0133) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csindex) #6
  br label %cleanup56

for.inc:                                          ; preds = %if.end44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csindex) #6
  %call51 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.0133) #6
  %cmp.not = icmp eq ptr %call51, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.thread:                                   ; preds = %if.end44
  call fastcc void @qcom_ebi2_setup_chipselect(ptr noundef nonnull %child.0133, ptr noundef %dev, ptr noundef %call21, ptr noundef %call27, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csindex) #6
  %call51137 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.0133) #6
  %cmp.not138 = icmp eq ptr %call51137, null
  br i1 %cmp.not138, label %for.inc.thread.if.then53_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.outer

for.inc.thread.if.then53_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53

for.end:                                          ; preds = %for.inc
  br i1 %have_children.0.off0132.ph, label %for.end.if.then53_crit_edge, label %for.end.cleanup56_crit_edge

for.end.cleanup56_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

for.end.if.then53_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53

if.then53:                                        ; preds = %for.end.if.then53_crit_edge, %for.inc.thread.if.then53_crit_edge
  %call54 = call i32 @of_platform_default_populate(ptr noundef %1, ptr noundef null, ptr noundef %dev) #6
  br label %cleanup56

err_disable_clk:                                  ; preds = %if.end25.err_disable_clk_crit_edge, %if.end19.err_disable_clk_crit_edge
  %ret.0.in = phi ptr [ %call21, %if.end19.err_disable_clk_crit_edge ], [ %call27, %if.end25.err_disable_clk_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  tail call void @clk_disable(ptr noundef %call8) #6
  tail call void @clk_unprepare(ptr noundef %call8) #6
  br label %err_disable_2x_clk

err_disable_2x_clk:                               ; preds = %err_disable_clk, %do.end18, %if.then10
  %ret.1 = phi i32 [ %3, %if.then10 ], [ %retval.0.i114.ph, %do.end18 ], [ %ret.0, %err_disable_clk ]
  tail call void @clk_disable(ptr noundef %call) #6
  tail call void @clk_unprepare(ptr noundef %call) #6
  br label %cleanup56

cleanup56:                                        ; preds = %err_disable_2x_clk, %if.then53, %for.end.cleanup56_crit_edge, %cleanup, %do.body32.cleanup56_crit_edge, %do.end, %if.then
  %retval.2 = phi i32 [ %2, %if.then ], [ %retval.0.i.ph, %do.end ], [ %ret.1, %err_disable_2x_clk ], [ %call.i.i, %cleanup ], [ %call54, %if.then53 ], [ 0, %for.end.cleanup56_crit_edge ], [ 0, %do.body32.cleanup56_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_ebi2_setup_chipselect(ptr noundef %np, ptr noundef %dev, ptr noundef %ebi2_base, ptr noundef %ebi2_xmem, i32 noundef %csindex) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %arrayidx = getelementptr [6 x %struct.cs_data], ptr @cs_info, i32 0, i32 %csindex
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ebi2_base) #6, !srcloc !94
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %or = or i32 %3, %1
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %val, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ebi2_base, i32 %5) #6, !srcloc !93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_ebi2_setup_chipselect, %if.then)) #6
          to label %for.body [label %if.then], !srcloc !100

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug183, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %csindex) #6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.then, %entry
  %slowcfg.0173 = phi i32 [ %slowcfg.3, %cleanup.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %fastcfg.0172 = phi i32 [ %fastcfg.3, %cleanup.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %i.0169 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %arrayidx9 = getelementptr [9 x %struct.ebi2_xmem_prop], ptr @xmem_props, i32 0, i32 %i.0169
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef %7, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool11.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool11.not, label %if.end30, label %do.body13

do.body13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_ebi2_setup_chipselect, %if.then25)) #6
          to label %cleanup [label %if.then25], !srcloc !100

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug184, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %7, i32 noundef %csindex) #6
  br label %cleanup

if.end30:                                         ; preds = %for.body
  %max = getelementptr [9 x %struct.ebi2_xmem_prop], ptr @xmem_props, i32 0, i32 %i.0169, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0169)
  %cmp31 = icmp eq i32 %i.0169, 6
  br i1 %cmp31, label %land.lhs.true, label %if.end30.if.end59_crit_edge

if.end30.if.end59_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end30
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool32.not = icmp eq i32 %9, 0
  br i1 %tobool32.not, label %land.lhs.true.if.end59_crit_edge, label %do.body42

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

do.body42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %or40 = or i32 %fastcfg.0172, 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_ebi2_setup_chipselect, %if.then54)) #6
          to label %cleanup [label %if.then54], !srcloc !100

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug185, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %7) #6
  br label %cleanup

if.end59:                                         ; preds = %land.lhs.true.if.end59_crit_edge, %if.end30.if.end59_crit_edge
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp61 = icmp ugt i32 %11, %13
  br i1 %cmp61, label %do.end66, label %if.end59.if.end70_crit_edge

if.end59.if.end70_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %7, i32 noundef %11, i32 noundef %13) #9
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end66, %if.end59.if.end70_crit_edge
  %15 = add nsw i32 %i.0169, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %tobool72.not = icmp ult i32 %15, 3
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %shift79 = getelementptr [9 x %struct.ebi2_xmem_prop], ptr @xmem_props, i32 0, i32 %i.0169, i32 3
  %18 = ptrtoint ptr %shift79 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %shift79, align 2
  %conv80 = zext i16 %19 to i32
  %shl81 = shl i32 %17, %conv80
  %or82 = select i1 %tobool72.not, i32 %shl81, i32 0
  %fastcfg.2 = or i32 %fastcfg.0172, %or82
  %or77 = select i1 %tobool72.not, i32 0, i32 %shl81
  %slowcfg.2 = or i32 %slowcfg.0173, %or77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_ebi2_setup_chipselect, %if.then96)) #6
          to label %cleanup [label %if.then96], !srcloc !100

if.then96:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug186, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %7, i32 noundef %21) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %if.end70, %if.then54, %do.body42, %if.then25, %do.body13
  %fastcfg.3 = phi i32 [ %fastcfg.0172, %if.then25 ], [ %or40, %if.then54 ], [ %fastcfg.2, %if.then96 ], [ %fastcfg.0172, %do.body13 ], [ %or40, %do.body42 ], [ %fastcfg.2, %if.end70 ]
  %slowcfg.3 = phi i32 [ %slowcfg.0173, %if.then25 ], [ %slowcfg.0173, %if.then54 ], [ %slowcfg.2, %if.then96 ], [ %slowcfg.0173, %do.body13 ], [ %slowcfg.0173, %do.body42 ], [ %slowcfg.2, %if.end70 ]
  %inc = add nuw nsw i32 %i.0169, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %do.end103, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end103:                                        ; preds = %cleanup
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %csindex, i32 noundef %slowcfg.3, i32 noundef %fastcfg.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slowcfg.3)
  %tobool104.not = icmp eq i32 %slowcfg.3, 0
  br i1 %tobool104.not, label %do.end103.if.end110_crit_edge, label %do.body106

do.end103.if.end110_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

do.body106:                                       ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  call void @arm_heavy_mb() #6
  %22 = call i32 @llvm.bswap.i32(i32 %slowcfg.3)
  %slow_cfg = getelementptr [6 x %struct.cs_data], ptr @cs_info, i32 0, i32 %csindex, i32 1
  %23 = ptrtoint ptr %slow_cfg to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %slow_cfg, align 4
  %conv109 = zext i16 %24 to i32
  %add.ptr = getelementptr i8, ptr %ebi2_xmem, i32 %conv109
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #6, !srcloc !93
  br label %if.end110

if.end110:                                        ; preds = %do.body106, %do.end103.if.end110_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fastcfg.3)
  %tobool111.not = icmp eq i32 %fastcfg.3, 0
  br i1 %tobool111.not, label %if.end110.if.end118_crit_edge, label %do.body113

if.end110.if.end118_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

do.body113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  call void @arm_heavy_mb() #6
  %25 = call i32 @llvm.bswap.i32(i32 %fastcfg.3)
  %fast_cfg = getelementptr [6 x %struct.cs_data], ptr @cs_info, i32 0, i32 %csindex, i32 2
  %26 = ptrtoint ptr %fast_cfg to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fast_cfg, align 2
  %conv116 = zext i16 %27 to i32
  %add.ptr117 = getelementptr i8, ptr %ebi2_xmem, i32 %conv116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %25) #6, !srcloc !93
  br label %if.end118

if.end118:                                        ; preds = %do.body113, %if.end110.if.end118_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_qcom_ebi2__187_403_qcom_ebi2_driver_init6, !1, !"__initcall__kmod_qcom_ebi2__187_403_qcom_ebi2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bus/qcom-ebi2.c", i32 403, i32 1}
!2 = !{ptr @__exitcall_qcom_ebi2_driver_exit, !1, !"__exitcall_qcom_ebi2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/bus/qcom-ebi2.c", i32 404, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/bus/qcom-ebi2.c", i32 405, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/bus/qcom-ebi2.c", i32 406, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bus/qcom-ebi2.c", i32 399, i32 11}
!12 = !{ptr @qcom_ebi2_driver, !13, !"qcom_ebi2_driver", i1 false, i1 false}
!13 = !{!"../drivers/bus/qcom-ebi2.c", i32 396, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bus/qcom-ebi2.c", i32 306, i32 31}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bus/qcom-ebi2.c", i32 312, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qcom_ebi2_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @qcom_ebi2_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bus/qcom-ebi2.c", i32 316, i32 30}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bus/qcom-ebi2.c", i32 324, i32 3}
!28 = !{ptr @qcom_ebi2_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qcom_ebi2_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bus/qcom-ebi2.c", i32 355, i32 37}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bus/qcom-ebi2.c", i32 362, i32 4}
!34 = !{ptr @qcom_ebi2_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @qcom_ebi2_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bus/qcom-ebi2.c", i32 242, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug183, !37, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bus/qcom-ebi2.c", i32 254, i32 4}
!43 = !{ptr @qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug184, !42, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bus/qcom-ebi2.c", i32 265, i32 4}
!46 = !{ptr @qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug185, !45, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/bus/qcom-ebi2.c", i32 271, i32 4}
!49 = !{ptr @qcom_ebi2_setup_chipselect._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @qcom_ebi2_setup_chipselect._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/bus/qcom-ebi2.c", i32 280, i32 3}
!53 = !{ptr @qcom_ebi2_setup_chipselect.__UNIQUE_ID_ddebug186, !52, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bus/qcom-ebi2.c", i32 283, i32 2}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @qcom_ebi2_setup_chipselect._entry.22, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @qcom_ebi2_setup_chipselect._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @cs_info, !60, !"cs_info", i1 false, i1 false}
!60 = !{!"../drivers/bus/qcom-ebi2.c", i32 114, i32 29}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/bus/qcom-ebi2.c", i32 171, i32 11}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/bus/qcom-ebi2.c", i32 177, i32 11}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/bus/qcom-ebi2.c", i32 183, i32 11}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/bus/qcom-ebi2.c", i32 189, i32 11}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/bus/qcom-ebi2.c", i32 195, i32 11}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/bus/qcom-ebi2.c", i32 201, i32 11}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/bus/qcom-ebi2.c", i32 207, i32 11}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/bus/qcom-ebi2.c", i32 213, i32 11}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/bus/qcom-ebi2.c", i32 219, i32 11}
!79 = !{ptr @xmem_props, !80, !"xmem_props", i1 false, i1 false}
!80 = !{!"../drivers/bus/qcom-ebi2.c", i32 169, i32 36}
!81 = !{ptr @qcom_ebi2_of_match, !82, !"qcom_ebi2_of_match", i1 false, i1 false}
!82 = !{!"../drivers/bus/qcom-ebi2.c", i32 390, i32 34}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2152947709}
!93 = !{i64 4075982}
!94 = !{i64 4076400}
!95 = !{i64 2152948339}
!96 = !{i64 2152949219}
!97 = !{!"auto-init"}
!98 = !{i64 2152930029}
!99 = !{i64 2152930235}
!100 = !{i64 2148962232, i64 2148962237, i64 2148962250, i64 2148962294, i64 2148962328, i64 2148962349}
!101 = !{i64 2152943579}
!102 = !{i64 2152944000}
