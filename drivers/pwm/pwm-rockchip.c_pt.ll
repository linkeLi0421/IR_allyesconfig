; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-rockchip.c_pt.bc'
source_filename = "../drivers/pwm/pwm-rockchip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rockchip_pwm_data = type { %struct.rockchip_pwm_regs, i32, i8, i8, i32 }
%struct.rockchip_pwm_regs = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.rockchip_pwm_chip = type { %struct.pwm_chip, ptr, ptr, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_rockchip__170_403_rockchip_pwm_driver_init6 = internal global ptr @rockchip_pwm_driver_init, section ".initcall6.init", align 4
@rockchip_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_pwm_probe, ptr @rockchip_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_pwm_driver_exit = internal global ptr @rockchip_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [60 x i8] c"pwm_rockchip.author=Beniamino Galvani <b.galvani@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [49 x i8] c"pwm_rockchip.description=Rockchip SoC PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [43 x i8] c"pwm_rockchip.file=drivers/pwm/pwm-rockchip\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [28 x i8] c"pwm_rockchip.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip-pwm\00", [19 x i8] zeroinitializer }, align 32
@rockchip_pwm_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk2928-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_data_v1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_data_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,vop-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_data_vop }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_data_v3 }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Can't get PWM clk\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@rockchip_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 334, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't get APB clk: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rockchip_pwm_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/pwm/pwm-rockchip.c\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_pwm_probe._entry_ptr = internal global ptr @rockchip_pwm_probe._entry, section ".printk_index", align 4
@rockchip_pwm_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 340, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't prepare enable PWM clk: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_pwm_probe._entry_ptr.13 = internal global ptr @rockchip_pwm_probe._entry.11, section ".printk_index", align 4
@rockchip_pwm_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 346, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't prepare enable APB clk: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_pwm_probe._entry_ptr.16 = internal global ptr @rockchip_pwm_probe._entry.14, section ".printk_index", align 4
@rockchip_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @rockchip_pwm_apply, ptr @rockchip_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@rockchip_pwm_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 363, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pwmchip_add() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rockchip_pwm_probe._entry_ptr.19 = internal global ptr @rockchip_pwm_probe._entry.17, section ".printk_index", align 4
@pwm_data_v1 = internal constant { %struct.rockchip_pwm_data, [36 x i8] } { %struct.rockchip_pwm_data { %struct.rockchip_pwm_regs { i32 4, i32 8, i32 0, i32 12 }, i32 2, i8 0, i8 0, i32 9 }, [36 x i8] zeroinitializer }, align 32
@pwm_data_v2 = internal constant { %struct.rockchip_pwm_data, [36 x i8] } { %struct.rockchip_pwm_data { %struct.rockchip_pwm_regs { i32 8, i32 4, i32 0, i32 12 }, i32 1, i8 1, i8 0, i32 3 }, [36 x i8] zeroinitializer }, align 32
@pwm_data_vop = internal constant { %struct.rockchip_pwm_data, [36 x i8] } { %struct.rockchip_pwm_data { %struct.rockchip_pwm_regs { i32 8, i32 4, i32 12, i32 0 }, i32 1, i8 1, i8 0, i32 3 }, [36 x i8] zeroinitializer }, align 32
@pwm_data_v3 = internal constant { %struct.rockchip_pwm_data, [36 x i8] } { %struct.rockchip_pwm_data { %struct.rockchip_pwm_regs { i32 8, i32 4, i32 0, i32 12 }, i32 1, i8 1, i8 1, i32 3 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"rockchip_pwm_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 395, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 397, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"rockchip_pwm_dt_ids\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 287, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 316, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 321, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 325, i32 9 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 325, i32 19 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 327, i32 39 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 334, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 340, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 346, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"rockchip_pwm_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 226, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 363, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"pwm_data_v1\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 232, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"pwm_data_v2\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 245, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"pwm_data_vop\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 259, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"pwm_data_v3\00", align 1
@___asan_gen_.93 = private constant [30 x i8] c"../drivers/pwm/pwm-rockchip.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 273, i32 39 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_rockchip_pwm_driver_exit, ptr @__initcall__kmod_pwm_rockchip__170_403_rockchip_pwm_driver_init6, ptr @rockchip_pwm_driver_exit, ptr @rockchip_pwm_probe._entry, ptr @rockchip_pwm_probe._entry.11, ptr @rockchip_pwm_probe._entry.14, ptr @rockchip_pwm_probe._entry.17, ptr @rockchip_pwm_probe._entry_ptr, ptr @rockchip_pwm_probe._entry_ptr.13, ptr @rockchip_pwm_probe._entry_ptr.16, ptr @rockchip_pwm_probe._entry_ptr.19, ptr @rockchip_pwm_driver, ptr @.str, ptr @rockchip_pwm_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @rockchip_pwm_ops, ptr @.str.18, ptr @pwm_data_v1, ptr @pwm_data_v2, ptr @pwm_data_vop, ptr @pwm_data_v3], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pwm_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pwm_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pwm_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pwm_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_data_v1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_data_v2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_data_vop to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_data_v3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_pwm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @rockchip_pwm_dt_ids, ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call6, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %clk = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call14, ptr %clk, align 4
  %cmp.i153 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then17, label %if.end12.if.end29_crit_edge

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then17:                                        ; preds = %if.end12
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call19, ptr %clk, align 4
  %cmp.i154 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then23, label %if.then17.if.end29_crit_edge

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call19 to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end29:                                         ; preds = %if.then17.if.end29_crit_edge, %if.end12.if.end29_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call31 = tail call i32 @of_count_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call31)
  %cmp = icmp eq i32 %call31, 2
  br i1 %cmp, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #5
  br label %if.end37

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then32
  %.sink = phi ptr [ %call34, %if.then32 ], [ %8, %if.else ]
  %9 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.sink, ptr %9, align 4
  %cmp.i155 = icmp ugt ptr %.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then40, label %if.end47

if.then40:                                        ; preds = %if.end37
  %cmp43.not = icmp eq ptr %.sink, inttoptr (i32 -517 to ptr)
  br i1 %cmp43.not, label %if.then40.cleanup_crit_edge, label %do.end

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %.sink to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %11) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %call.i156 = tail call i32 @clk_prepare(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool.not.i = icmp eq i32 %call.i156, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end47.do.end54_crit_edge

if.end47.do.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end54

if.end.i:                                         ; preds = %if.end47
  %call1.i = tail call i32 @clk_enable(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end56, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %13) #5
  br label %do.end54

do.end54:                                         ; preds = %if.then3.i, %if.end47.do.end54_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i156, %if.end47.do.end54_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end56:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %call.i157 = tail call i32 @clk_prepare(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i158 = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i158, label %if.end.i161, label %if.end56.do.end63_crit_edge

if.end56.do.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end63

if.end.i161:                                      ; preds = %if.end56
  %call1.i159 = tail call i32 @clk_enable(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i159)
  %tobool2.not.i160 = icmp eq i32 %call1.i159, 0
  br i1 %tobool2.not.i160, label %if.end65, label %if.then3.i162

if.then3.i162:                                    ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %15) #5
  br label %do.end63

do.end63:                                         ; preds = %if.then3.i162, %if.end56.do.end63_crit_edge
  %retval.0.i163.ph = phi i32 [ %call1.i159, %if.then3.i162 ], [ %call.i157, %if.end56.do.end63_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i163.ph) #8
  br label %err_clk

if.end65:                                         ; preds = %if.end.i161
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %data66 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %data66 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %data66, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @rockchip_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %npwm, align 4
  %enable_conf72 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %18, i32 0, i32 4
  %23 = ptrtoint ptr %enable_conf72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %enable_conf72, align 4
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %ctrl75 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %18, i32 0, i32 3
  %27 = ptrtoint ptr %ctrl75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctrl75, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 %28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !65
  %call79 = tail call i32 @pwmchip_add(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.end84, label %if.end86

do.end84:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call79) #8
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %31) #5
  tail call void @clk_unprepare(ptr noundef %31) #5
  br label %err_clk

if.end86:                                         ; preds = %if.end65
  %32 = tail call i32 @llvm.bswap.i32(i32 %29)
  %and = and i32 %32, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %24)
  %cmp77 = icmp eq i32 %and, %24
  br i1 %cmp77, label %if.end86.if.end90_crit_edge, label %if.then88

if.end86.if.end90_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %34) #5
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end86.if.end90_crit_edge
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %36) #5
  br label %cleanup

err_clk:                                          ; preds = %do.end84, %do.end63
  %ret.0 = phi i32 [ %retval.0.i163.ph, %do.end63 ], [ %call79, %do.end84 ]
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %38) #5
  tail call void @clk_unprepare(ptr noundef %38) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end90, %do.end54, %do.end, %if.then40.cleanup_crit_edge, %if.then23, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then9 ], [ %call27, %if.then23 ], [ %retval.0.i.ph, %do.end54 ], [ %ret.0, %err_clk ], [ 0, %if.end90 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %11, %do.end ], [ -517, %if.then40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #5
  %pclk = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #5
  %clk = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pwm_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pclk = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pclk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %curstate.sroa.4.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %curstate.sroa.4.0.state1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %curstate.sroa.4.0.copyload63 = load i32, ptr %curstate.sroa.4.0.state1.i.sroa_idx, align 8
  %curstate.sroa.5.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %curstate.sroa.5.0.state1.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %curstate.sroa.5.0.copyload64 = load i8, ptr %curstate.sroa.5.0.state1.i.sroa_idx, align 4
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %curstate.sroa.4.0.copyload63)
  %cmp.not = icmp eq i32 %7, %curstate.sroa.4.0.copyload63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curstate.sroa.5.0.copyload64)
  %extract.t57 = icmp ne i8 %curstate.sroa.5.0.copyload64, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curstate.sroa.5.0.copyload64)
  %tobool7.not = icmp eq i8 %curstate.sroa.5.0.copyload64, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.end5.if.end17_crit_edge, label %land.lhs.true10

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

land.lhs.true10:                                  ; preds = %if.end5
  %data = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %supports_lock = getelementptr inbounds %struct.rockchip_pwm_data, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %supports_lock to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %supports_lock, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true10.if.end17_crit_edge

land.lhs.true10.if.end17_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12:                                        ; preds = %land.lhs.true10
  %call13 = tail call fastcc i32 @rockchip_pwm_enable(ptr noundef %chip, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.out_crit_edge

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %land.lhs.true10.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  %enabled.0.off0 = phi i1 [ true, %land.lhs.true10.if.end17_crit_edge ], [ %extract.t57, %if.end5.if.end17_crit_edge ], [ false, %if.then12.if.end17_crit_edge ]
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %13) #5
  %conv.i = zext i32 %call1.i to i64
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %state, align 8
  %mul.i = mul i64 %15, %conv.i
  %data.i = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 3
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %prescaler.i = getelementptr inbounds %struct.rockchip_pwm_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prescaler.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prescaler.i, align 4
  %mul3.i = mul i32 %19, 1000000000
  %div41.i = lshr exact i32 %mul3.i, 1
  %conv5.i = zext i32 %div41.i to i64
  %add.i = add i64 %mul.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp175.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp175.i, label %if.then179.i, label %if.else185.i, !prof !67

if.then179.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %conv180.i = trunc i64 %add.i to i32
  %div183.i = udiv i32 %conv180.i, %mul3.i
  br label %if.else401.i

if.else185.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i, i64 %add.i) #9, !srcloc !68
  %asmresult1.i.i = extractvalue { i64, i64 } %20, 1
  %extract.t111.i = trunc i64 %asmresult1.i.i to i32
  br label %if.else401.i

if.else401.i:                                     ; preds = %if.else185.i, %if.then179.i
  %_tmp.0.off0.i = phi i32 [ %div183.i, %if.then179.i ], [ %extract.t111.i, %if.else185.i ]
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %21 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %duty_cycle.i, align 8
  %mul193.i = mul i64 %22, %conv.i
  %add201.i = add i64 %mul193.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add201.i)
  %cmp403.i = icmp ult i64 %add201.i, 4294967296
  br i1 %cmp403.i, label %if.then411.i, label %if.else417.i, !prof !67

if.then411.i:                                     ; preds = %if.else401.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv412.i = trunc i64 %add201.i to i32
  %div415.i = udiv i32 %conv412.i, %mul3.i
  br label %if.end421.i

if.else417.i:                                     ; preds = %if.else401.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul3.i, i64 %add201.i) #9, !srcloc !68
  %asmresult1.i30.i = extractvalue { i64, i64 } %23, 1
  %extract.t108.i = trunc i64 %asmresult1.i30.i to i32
  br label %if.end421.i

if.end421.i:                                      ; preds = %if.else417.i, %if.then411.i
  %_tmp198.0.off0.i = phi i32 [ %div415.i, %if.then411.i ], [ %extract.t108.i, %if.else417.i ]
  %base.i = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 4
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %ctrl426.i = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %17, i32 0, i32 3
  %26 = ptrtoint ptr %ctrl426.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrl426.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !65
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %supports_lock.i = getelementptr inbounds %struct.rockchip_pwm_data, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %supports_lock.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %supports_lock.i, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool430.not.i = icmp eq i8 %33, 0
  br i1 %tobool430.not.i, label %if.end421.i.do.body.i_crit_edge, label %if.then431.i

if.end421.i.do.body.i_crit_edge:                  ; preds = %if.end421.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then431.i:                                     ; preds = %if.end421.i
  call void @__sanitizer_cov_trace_pc() #7
  %or432.i = or i32 %29, 64
  %34 = tail call i32 @llvm.bswap.i32(i32 %or432.i) #5
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %ctrl436.i = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %31, i32 0, i32 3
  %37 = ptrtoint ptr %ctrl436.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctrl436.i, align 4
  %add.ptr437.i = getelementptr i8, ptr %36, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr437.i, i32 %34) #5, !srcloc !69
  br label %do.body.i

do.body.i:                                        ; preds = %if.then431.i, %if.end421.i.do.body.i_crit_edge
  %ctrl.0.i = phi i32 [ %or432.i, %if.then431.i ], [ %29, %if.end421.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %39 = tail call i32 @llvm.bswap.i32(i32 %_tmp.0.off0.i) #5
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %period442.i = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %period442.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %period442.i, align 4
  %add.ptr443.i = getelementptr i8, ptr %41, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr443.i, i32 %39) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %46 = tail call i32 @llvm.bswap.i32(i32 %_tmp198.0.off0.i) #5
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add.ptr451.i = getelementptr i8, ptr %48, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr451.i, i32 %46) #5, !srcloc !69
  %53 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i, align 4
  %supports_polarity.i = getelementptr inbounds %struct.rockchip_pwm_data, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %supports_polarity.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %supports_polarity.i, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool453.not.i = icmp eq i8 %56, 0
  br i1 %tobool453.not.i, label %do.body.i.rockchip_pwm_config.exit_crit_edge, label %if.then454.i

do.body.i.rockchip_pwm_config.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_pwm_config.exit

if.then454.i:                                     ; preds = %do.body.i
  %and455.i = and i32 %ctrl.0.i, -25
  %57 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp456.i = icmp eq i32 %58, 1
  br i1 %cmp456.i, label %if.then458.i, label %if.else460.i

if.then458.i:                                     ; preds = %if.then454.i
  call void @__sanitizer_cov_trace_pc() #7
  %or459.i = or i32 %and455.i, 16
  br label %rockchip_pwm_config.exit

if.else460.i:                                     ; preds = %if.then454.i
  call void @__sanitizer_cov_trace_pc() #7
  %or461.i = or i32 %and455.i, 8
  br label %rockchip_pwm_config.exit

rockchip_pwm_config.exit:                         ; preds = %if.else460.i, %if.then458.i, %do.body.i.rockchip_pwm_config.exit_crit_edge
  %ctrl.1.i = phi i32 [ %or459.i, %if.then458.i ], [ %or461.i, %if.else460.i ], [ %ctrl.0.i, %do.body.i.rockchip_pwm_config.exit_crit_edge ]
  %supports_lock465.i = getelementptr inbounds %struct.rockchip_pwm_data, ptr %54, i32 0, i32 3
  %59 = ptrtoint ptr %supports_lock465.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %supports_lock465.i, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool466.not.i = icmp eq i8 %60, 0
  %and468.i = and i32 %ctrl.1.i, -65
  %spec.select.i = select i1 %tobool466.not.i, i32 %ctrl.1.i, i32 %and468.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %61 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #5
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i, align 4
  %ctrl476.i = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %ctrl476.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ctrl476.i, align 4
  %add.ptr477.i = getelementptr i8, ptr %63, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr477.i, i32 %61) #5, !srcloc !69
  %enabled18 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %68 = ptrtoint ptr %enabled18 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %enabled18, align 4, !range !66
  %70 = zext i1 %enabled.0.off0 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %70)
  %cmp22.not = icmp eq i8 %69, %70
  br i1 %cmp22.not, label %rockchip_pwm_config.exit.out_crit_edge, label %if.then24

rockchip_pwm_config.exit.out_crit_edge:           ; preds = %rockchip_pwm_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then24:                                        ; preds = %rockchip_pwm_config.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool19.not = icmp eq i8 %69, 0
  %71 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i, align 4
  %enable_conf1.i = getelementptr inbounds %struct.rockchip_pwm_data, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %enable_conf1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %enable_conf1.i, align 4
  br i1 %tobool19.not, label %if.then24.if.end5.i_crit_edge, label %if.then.i

if.then24.if.end5.i_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then24
  %75 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk, align 4
  %call2.i = tail call i32 @clk_enable(ptr noundef %76) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.then24.if.end5.i_crit_edge
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 4
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i, align 4
  %ctrl.i = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ctrl.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %78, i32 %82
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #5, !srcloc !65
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #5
  %or.i = or i32 %84, %74
  %neg.i62 = xor i32 %74, -1
  %and.i = and i32 %84, %neg.i62
  %val.0.i = select i1 %tobool19.not, i32 %and.i, i32 %or.i
  %85 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #5
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %88 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i, align 4
  %ctrl14.i = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %ctrl14.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ctrl14.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %87, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %85) #5, !srcloc !69
  br i1 %tobool19.not, label %if.then17.i, label %if.end5.i.out_crit_edge

if.end5.i.out_crit_edge:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then17.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %93) #5
  br label %out

out:                                              ; preds = %if.then17.i, %if.end5.i.out_crit_edge, %if.then.i.out_crit_edge, %rockchip_pwm_config.exit.out_crit_edge, %if.then12.out_crit_edge
  %ret.1 = phi i32 [ 0, %rockchip_pwm_config.exit.out_crit_edge ], [ %call13, %if.then12.out_crit_edge ], [ %call2.i, %if.then.i.out_crit_edge ], [ 0, %if.then17.i ], [ 0, %if.end5.i.out_crit_edge ]
  %94 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %95) #5
  %96 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %97) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_pwm_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %enable_conf1 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %enable_conf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_conf1, align 4
  %pclk = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call8 = tail call i32 @clk_get_rate(ptr noundef %9) #5
  %base = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 4
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %period = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %period, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !65
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %conv = zext i32 %17 to i64
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %prescaler = getelementptr inbounds %struct.rockchip_pwm_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prescaler to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prescaler, align 4
  %mul = mul i32 %21, 1000000000
  %conv13 = zext i32 %mul to i64
  %mul14 = mul nuw i64 %conv13, %conv
  %div659 = lshr i32 %call8, 1
  %conv15 = zext i32 %div659 to i64
  %add = add nuw i64 %mul14, %conv15
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp189 = icmp ult i64 %add, 4294967296
  br i1 %cmp189, label %if.then193, label %if.else199, !prof !67

if.then193:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %conv194 = trunc i64 %add to i32
  %div197 = udiv i32 %conv194, %call8
  %conv198 = zext i32 %div197 to i64
  br label %if.end203

if.else199:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call8, i64 %add) #9, !srcloc !68
  %asmresult1.i = extractvalue { i64, i64 } %22, 1
  br label %if.end203

if.end203:                                        ; preds = %if.else199, %if.then193
  %_tmp.0 = phi i64 [ %conv198, %if.then193 ], [ %asmresult1.i, %if.else199 ]
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %_tmp.0, ptr %state, align 8
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add.ptr211 = getelementptr i8, ptr %25, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr211) #5, !srcloc !65
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %conv214 = zext i32 %31 to i64
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %prescaler216 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prescaler216 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %prescaler216, align 4
  %mul217 = mul i32 %35, 1000000000
  %conv218 = zext i32 %mul217 to i64
  %mul219 = mul nuw i64 %conv218, %conv214
  %add224 = add nuw i64 %mul219, %conv15
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add224)
  %cmp426 = icmp ult i64 %add224, 4294967296
  br i1 %cmp426, label %if.then434, label %if.else440, !prof !67

if.then434:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #7
  %conv435 = trunc i64 %add224 to i32
  %div438 = udiv i32 %conv435, %call8
  %conv439 = zext i32 %div438 to i64
  br label %if.end444

if.else440:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #7
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call8, i64 %add224) #9, !srcloc !68
  %asmresult1.i687 = extractvalue { i64, i64 } %36, 1
  br label %if.end444

if.end444:                                        ; preds = %if.else440, %if.then434
  %_tmp221.0 = phi i64 [ %conv439, %if.then434 ], [ %asmresult1.i687, %if.else440 ]
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %37 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %_tmp221.0, ptr %duty_cycle, align 8
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %ctrl = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctrl, align 4
  %add.ptr451 = getelementptr i8, ptr %39, i32 %43
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr451) #5, !srcloc !65
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %and454 = and i32 %45, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %and454, i32 %3)
  %cmp455 = icmp eq i32 %and454, %3
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %frombool = zext i1 %cmp455 to i8
  %46 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool, ptr %enabled, align 4
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %supports_polarity = getelementptr inbounds %struct.rockchip_pwm_data, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %supports_polarity to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %supports_polarity, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool458.not = icmp ne i8 %50, 0
  %and461 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and461)
  %tobool462.not = icmp eq i32 %and461, 0
  %or.cond = select i1 %tobool458.not, i1 %tobool462.not, i1 false
  %spec.select = zext i1 %or.cond to i32
  %51 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select, ptr %51, align 8
  %53 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %54) #5
  %55 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %56) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end444, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pwm_enable(ptr nocapture noundef readonly %chip, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %enable_conf1 = getelementptr inbounds %struct.rockchip_pwm_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %enable_conf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_conf1, align 4
  br i1 %enable, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %base = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %ctrl = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !65
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %or = or i32 %13, %3
  %neg = xor i32 %3, -1
  %and = and i32 %13, %neg
  %val.0 = select i1 %enable, i32 %or, i32 %and
  %14 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %ctrl14 = getelementptr inbounds %struct.rockchip_pwm_regs, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ctrl14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl14, align 4
  %add.ptr15 = getelementptr i8, ptr %16, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %14) #5, !srcloc !69
  br i1 %enable, label %if.end5.cleanup_crit_edge, label %if.then17

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %clk18 = getelementptr inbounds %struct.rockchip_pwm_chip, ptr %chip, i32 0, i32 1
  %21 = ptrtoint ptr %clk18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk18, align 4
  tail call void @clk_disable(ptr noundef %22) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_pwm_rockchip__170_403_rockchip_pwm_driver_init6, !1, !"__initcall__kmod_pwm_rockchip__170_403_rockchip_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-rockchip.c", i32 403, i32 1}
!2 = !{ptr @__exitcall_rockchip_pwm_driver_exit, !1, !"__exitcall_rockchip_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-rockchip.c", i32 405, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-rockchip.c", i32 406, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-rockchip.c", i32 407, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-rockchip.c", i32 397, i32 11}
!12 = !{ptr @rockchip_pwm_driver, !13, !"rockchip_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-rockchip.c", i32 395, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-rockchip.c", i32 316, i32 37}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-rockchip.c", i32 321, i32 11}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-rockchip.c", i32 325, i32 9}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-rockchip.c", i32 325, i32 19}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-rockchip.c", i32 327, i32 39}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pwm/pwm-rockchip.c", i32 334, i32 4}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rockchip_pwm_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @rockchip_pwm_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-rockchip.c", i32 340, i32 3}
!34 = !{ptr @rockchip_pwm_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rockchip_pwm_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pwm/pwm-rockchip.c", i32 346, i32 3}
!38 = !{ptr @rockchip_pwm_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rockchip_pwm_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pwm/pwm-rockchip.c", i32 363, i32 3}
!42 = !{ptr @rockchip_pwm_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rockchip_pwm_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @rockchip_pwm_ops, !45, !"rockchip_pwm_ops", i1 false, i1 false}
!45 = !{!"../drivers/pwm/pwm-rockchip.c", i32 226, i32 29}
!46 = !{ptr @rockchip_pwm_dt_ids, !47, !"rockchip_pwm_dt_ids", i1 false, i1 false}
!47 = !{!"../drivers/pwm/pwm-rockchip.c", i32 287, i32 34}
!48 = !{ptr @pwm_data_v1, !49, !"pwm_data_v1", i1 false, i1 false}
!49 = !{!"../drivers/pwm/pwm-rockchip.c", i32 232, i32 39}
!50 = !{ptr @pwm_data_v2, !51, !"pwm_data_v2", i1 false, i1 false}
!51 = !{!"../drivers/pwm/pwm-rockchip.c", i32 245, i32 39}
!52 = !{ptr @pwm_data_vop, !53, !"pwm_data_vop", i1 false, i1 false}
!53 = !{!"../drivers/pwm/pwm-rockchip.c", i32 259, i32 39}
!54 = !{ptr @pwm_data_v3, !55, !"pwm_data_v3", i1 false, i1 false}
!55 = !{!"../drivers/pwm/pwm-rockchip.c", i32 273, i32 39}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2037041}
!66 = !{i8 0, i8 2}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2148638252, i64 2148638532, i64 2148638866, i64 2148639200}
!69 = !{i64 2036623}
!70 = !{i64 2152589956}
!71 = !{i64 2152590383}
!72 = !{i64 2152590909}
