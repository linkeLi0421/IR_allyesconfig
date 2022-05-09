; ModuleID = '/llk/IR_all_yes/drivers/bus/bt1-axi.c_pt.bc'
source_filename = "../drivers/bus/bt1-axi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.bt1_axi = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.atomic_t }

@__initcall__kmod_bt1_axi__187_310_bt1_axi_driver_init6 = internal global ptr @bt1_axi_driver_init, section ".initcall6.init", align 4
@bt1_axi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bt1_axi_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bt1_axi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bt1_axi_driver_exit = internal global ptr @bt1_axi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [63 x i8] c"bt1_axi.author=Serge Semin <Sergey.Semin@baikalelectronics.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [45 x i8] c"bt1_axi.description=Baikal-T1 AXI-bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [33 x i8] c"bt1_axi.file=drivers/bus/bt1-axi\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [23 x i8] c"bt1_axi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bt1-axi\00", [24 x i8] zeroinitializer }, align 32
@bt1_axi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"baikal,bt1-axi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bt1_axi_create_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't add AXI EHB data clear action\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bt1_axi_create_data\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/bus/bt1-axi.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bt1_axi_create_data._entry_ptr = internal global ptr @bt1_axi_create_data._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@bt1_axi_request_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't find syscon registers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bt1_axi_request_regs\00", [43 x i8] zeroinitializer }, align 32
@bt1_axi_request_regs._entry_ptr = internal global ptr @bt1_axi_request_regs._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"qos\00", [28 x i8] zeroinitializer }, align 32
@bt1_axi_request_regs._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't map AXI-bus QoS registers\0A\00", [60 x i8] zeroinitializer }, align 32
@bt1_axi_request_regs._entry_ptr.12 = internal global ptr @bt1_axi_request_regs._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arst\00", [27 x i8] zeroinitializer }, align 32
@bt1_axi_request_rst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 139, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't get reset control line\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bt1_axi_request_rst\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bt1_axi_request_rst._entry_ptr = internal global ptr @bt1_axi_request_rst._entry, section ".printk_index", align 4
@bt1_axi_request_rst._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to deassert the reset line\0A\00", [61 x i8] zeroinitializer }, align 32
@bt1_axi_request_rst._entry_ptr.19 = internal global ptr @bt1_axi_request_rst._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@bt1_axi_request_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't get AXI Interconnect clock\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bt1_axi_request_clk\00", [44 x i8] zeroinitializer }, align 32
@bt1_axi_request_clk._entry_ptr = internal global ptr @bt1_axi_request_clk._entry, section ".printk_index", align 4
@bt1_axi_request_clk._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't enable the AXI clock\0A\00", [33 x i8] zeroinitializer }, align 32
@bt1_axi_request_clk._entry_ptr.25 = internal global ptr @bt1_axi_request_clk._entry.23, section ".printk_index", align 4
@bt1_axi_request_clk._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't add AXI clock disable action\0A\00", [60 x i8] zeroinitializer }, align 32
@bt1_axi_request_clk._entry_ptr.28 = internal global ptr @bt1_axi_request_clk._entry.26, section ".printk_index", align 4
@bt1_axi_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't request AXI EHB IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bt1_axi_request_irq\00", [44 x i8] zeroinitializer }, align 32
@bt1_axi_request_irq._entry_ptr = internal global ptr @bt1_axi_request_irq._entry, section ".printk_index", align 4
@bt1_axi_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.bt1_axi_isr = private unnamed_addr constant [12 x i8] c"bt1_axi_isr\00", align 1
@bt1_axi_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.bt1_axi_isr, ptr @.str.3, i32 70, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AXI-bus fault %d: %s at 0x%x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@bt1_axi_isr._entry_ptr = internal global ptr @bt1_axi_isr._entry, section ".printk_index", align 4
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no slave\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"slave protocol error\00", [43 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@bt1_axi_sysfs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bt1_axi_sysfs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@bt1_axi_init_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to add sysfs files group\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bt1_axi_init_sysfs\00", [45 x i8] zeroinitializer }, align 32
@bt1_axi_init_sysfs._entry_ptr = internal global ptr @bt1_axi_init_sysfs._entry, section ".printk_index", align 4
@bt1_axi_init_sysfs._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can't add AXI EHB sysfs remove action\0A\00", [57 x i8] zeroinitializer }, align 32
@bt1_axi_init_sysfs._entry_ptr.40 = internal global ptr @bt1_axi_init_sysfs._entry.38, section ".printk_index", align 4
@bt1_axi_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bt1_axi_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bt1_axi_sysfs_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_count, ptr @dev_attr_inject_error, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inject_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inject_error_show, ptr @inject_error_store }, [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inject_error\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error injection: bus unaligned\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unaligned\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"bt1_axi_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 303, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 306, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"bt1_axi_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 297, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 104, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 120, i32 64 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 122, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 126, i32 62 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 128, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 137, i32 66 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 139, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 145, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 161, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 163, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 169, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 175, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 192, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 66, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [21 x i8] c"bt1_axi_sysfs_groups\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 254, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 260, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"bt1_axi_sysfs_group\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 239, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c"bt1_axi_sysfs_attrs\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 234, i32 26 }
@___asan_gen_.194 = private unnamed_addr constant [15 x i8] c"dev_attr_count\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [22 x i8] c"dev_attr_inject_error\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 204, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 202, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 232, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 209, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 223, i32 24 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [25 x i8] c"../drivers/bus/bt1-axi.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 225, i32 29 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_bt1_axi_driver_exit, ptr @__initcall__kmod_bt1_axi__187_310_bt1_axi_driver_init6, ptr @bt1_axi_create_data._entry, ptr @bt1_axi_create_data._entry_ptr, ptr @bt1_axi_driver_exit, ptr @bt1_axi_init_sysfs._entry, ptr @bt1_axi_init_sysfs._entry.38, ptr @bt1_axi_init_sysfs._entry_ptr, ptr @bt1_axi_init_sysfs._entry_ptr.40, ptr @bt1_axi_isr._entry, ptr @bt1_axi_isr._entry_ptr, ptr @bt1_axi_request_clk._entry, ptr @bt1_axi_request_clk._entry.23, ptr @bt1_axi_request_clk._entry.26, ptr @bt1_axi_request_clk._entry_ptr, ptr @bt1_axi_request_clk._entry_ptr.25, ptr @bt1_axi_request_clk._entry_ptr.28, ptr @bt1_axi_request_irq._entry, ptr @bt1_axi_request_irq._entry_ptr, ptr @bt1_axi_request_regs._entry, ptr @bt1_axi_request_regs._entry.10, ptr @bt1_axi_request_regs._entry_ptr, ptr @bt1_axi_request_regs._entry_ptr.12, ptr @bt1_axi_request_rst._entry, ptr @bt1_axi_request_rst._entry.17, ptr @bt1_axi_request_rst._entry_ptr, ptr @bt1_axi_request_rst._entry_ptr.19, ptr @bt1_axi_driver, ptr @.str, ptr @bt1_axi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @bt1_axi_isr._rs, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @bt1_axi_sysfs_groups, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @bt1_axi_sysfs_group, ptr @bt1_axi_sysfs_attrs, ptr @dev_attr_count, ptr @dev_attr_inject_error, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_create_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_request_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_request_regs._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_request_rst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_request_rst._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_request_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_request_clk._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_request_clk._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_sysfs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_init_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_init_sysfs._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_axi_sysfs_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inject_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bt1_axi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bt1_axi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bt1_axi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bt1_axi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt1_axi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call3.i = tail call i32 @devm_add_action(ptr noundef %dev1.i, ptr noundef nonnull @bt1_axi_clear_data, ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.1) #10
  %0 = inttoptr i32 %call3.i to ptr
  br label %bt1_axi_create_data.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1.i, ptr %call.i.i, align 4
  %count.i = getelementptr inbounds %struct.bt1_axi, ptr %call.i.i, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %count.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  br label %bt1_axi_create_data.exit

bt1_axi_create_data.exit:                         ; preds = %if.end7.i, %do.end.i
  %retval.0.i = phi ptr [ %0, %do.end.i ], [ %call.i.i, %if.end7.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bt1_axi_create_data.exit.if.then_crit_edge, label %if.end

bt1_axi_create_data.exit.if.then_crit_edge:       ; preds = %bt1_axi_create_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %bt1_axi_create_data.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i65 = phi ptr [ %retval.0.i, %bt1_axi_create_data.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i65 to i32
  br label %cleanup

if.end:                                           ; preds = %bt1_axi_create_data.exit
  %5 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %retval.0.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %8, ptr noundef nonnull @.str.6) #7
  %sys_regs.i = getelementptr inbounds %struct.bt1_axi, ptr %retval.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %sys_regs.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i38, label %if.end.i39

do.end.i38:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #10
  %10 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_regs.i, align 4
  br label %bt1_axi_request_regs.exit

if.end.i39:                                       ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %6, i32 -16
  %call7.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.9) #7
  %qos_regs.i = getelementptr inbounds %struct.bt1_axi, ptr %retval.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %qos_regs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %qos_regs.i, align 4
  %cmp.i27.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27.i, label %do.end13.i, label %if.end.i39.if.end14.i_crit_edge

if.end.i39.if.end14.i_crit_edge:                  ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

do.end13.i:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11) #10
  %13 = ptrtoint ptr %qos_regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %qos_regs.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end13.i, %if.end.i39.if.end14.i_crit_edge
  %14 = phi ptr [ %.pr, %do.end13.i ], [ %call7.i, %if.end.i39.if.end14.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end14.i.bt1_axi_request_regs.exit_crit_edge, label %if.end14.i.if.end5_crit_edge

if.end14.i.if.end5_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end14.i.bt1_axi_request_regs.exit_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bt1_axi_request_regs.exit

bt1_axi_request_regs.exit:                        ; preds = %if.end14.i.bt1_axi_request_regs.exit_crit_edge, %do.end.i38
  %retval.0.i40.in = phi ptr [ %11, %do.end.i38 ], [ %14, %if.end14.i.bt1_axi_request_regs.exit_crit_edge ]
  %retval.0.i40 = ptrtoint ptr %retval.0.i40.in to i32
  %tobool.not = icmp eq ptr %retval.0.i40.in, null
  br i1 %tobool.not, label %bt1_axi_request_regs.exit.if.end5_crit_edge, label %bt1_axi_request_regs.exit.cleanup_crit_edge

bt1_axi_request_regs.exit.cleanup_crit_edge:      ; preds = %bt1_axi_request_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bt1_axi_request_regs.exit.if.end5_crit_edge:      ; preds = %bt1_axi_request_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %bt1_axi_request_regs.exit.if.end5_crit_edge, %if.end14.i.if.end5_crit_edge
  %15 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %retval.0.i, align 4
  %call.i.i41 = tail call ptr @__devm_reset_control_get(ptr noundef %16, ptr noundef nonnull @.str.13, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %arst.i = getelementptr inbounds %struct.bt1_axi, ptr %retval.0.i, i32 0, i32 5
  %17 = ptrtoint ptr %arst.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i41, ptr %arst.i, align 4
  %cmp.i.i42 = icmp ugt ptr %call.i.i41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i42, label %bt1_axi_request_rst.exit, label %if.end.i46

if.end.i46:                                       ; preds = %if.end5
  %call7.i44 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i44)
  %tobool.not.i45 = icmp eq i32 %call7.i44, 0
  br i1 %tobool.not.i45, label %if.end.i46.if.end9_crit_edge, label %bt1_axi_request_rst.exit.thread70

if.end.i46.if.end9_crit_edge:                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

bt1_axi_request_rst.exit.thread70:                ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.18) #10
  br label %cleanup

bt1_axi_request_rst.exit:                         ; preds = %if.end5
  %20 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.14) #10
  %22 = ptrtoint ptr %arst.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arst.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %tobool7.not = icmp eq ptr %23, null
  br i1 %tobool7.not, label %bt1_axi_request_rst.exit.if.end9_crit_edge, label %bt1_axi_request_rst.exit.cleanup_crit_edge

bt1_axi_request_rst.exit.cleanup_crit_edge:       ; preds = %bt1_axi_request_rst.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bt1_axi_request_rst.exit.if.end9_crit_edge:       ; preds = %bt1_axi_request_rst.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %bt1_axi_request_rst.exit.if.end9_crit_edge, %if.end.i46.if.end9_crit_edge
  %25 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %retval.0.i, align 4
  %call.i48 = tail call ptr @devm_clk_get(ptr noundef %26, ptr noundef nonnull @.str.20) #7
  %aclk.i = getelementptr inbounds %struct.bt1_axi, ptr %retval.0.i, i32 0, i32 4
  %27 = ptrtoint ptr %aclk.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i48, ptr %aclk.i, align 4
  %cmp.i.i49 = icmp ugt ptr %call.i48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i49, label %bt1_axi_request_clk.exit, label %if.end.i52

if.end.i52:                                       ; preds = %if.end9
  %call.i.i51 = tail call i32 @clk_prepare(ptr noundef %call.i48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %tobool.not.i.i = icmp eq i32 %call.i.i51, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i52.do.end11.i53_crit_edge

if.end.i52.do.end11.i53_crit_edge:                ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i53

if.end.i.i:                                       ; preds = %if.end.i52
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call.i48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end13.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call.i48) #7
  br label %do.end11.i53

do.end11.i53:                                     ; preds = %if.then3.i.i, %if.end.i52.do.end11.i53_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i51, %if.end.i52.do.end11.i53_crit_edge ]
  %28 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i.i
  %30 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %retval.0.i, align 4
  %call.i35.i = tail call i32 @devm_add_action(ptr noundef %31, ptr noundef nonnull @bt1_axi_disable_clk, ptr noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %tobool.not.i36.i = icmp eq i32 %call.i35.i, 0
  br i1 %tobool.not.i36.i, label %if.end13.i.if.end13_crit_edge, label %do.end20.i

if.end13.i.if.end13_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %aclk.i, align 4
  tail call void @clk_disable(ptr noundef %33) #7
  tail call void @clk_unprepare(ptr noundef %33) #7
  %34 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.27) #10
  br label %cleanup

bt1_axi_request_clk.exit:                         ; preds = %if.end9
  %36 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.21) #10
  %38 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %aclk.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %tobool11.not = icmp eq ptr %39, null
  br i1 %tobool11.not, label %bt1_axi_request_clk.exit.if.end13_crit_edge, label %bt1_axi_request_clk.exit.cleanup_crit_edge

bt1_axi_request_clk.exit.cleanup_crit_edge:       ; preds = %bt1_axi_request_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bt1_axi_request_clk.exit.if.end13_crit_edge:      ; preds = %bt1_axi_request_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %bt1_axi_request_clk.exit.if.end13_crit_edge, %if.end13.i.if.end13_crit_edge
  %41 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %retval.0.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %42, i32 -16
  %call.i56 = tail call i32 @platform_get_irq(ptr noundef %add.ptr.i55, i32 noundef 0) #7
  %irq.i = getelementptr inbounds %struct.bt1_axi, ptr %retval.0.i, i32 0, i32 3
  %43 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call.i56, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i57 = icmp slt i32 %call.i56, 0
  br i1 %cmp.i57, label %if.end13.cleanup_crit_edge, label %if.end.i60

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i60:                                       ; preds = %if.end13
  %44 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %retval.0.i, align 4
  %call.i.i58 = tail call i32 @devm_request_threaded_irq(ptr noundef %45, i32 noundef %call.i56, ptr noundef nonnull @bt1_axi_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %tobool.not.i59 = icmp eq i32 %call.i.i58, 0
  br i1 %tobool.not.i59, label %if.end17, label %do.end.i61

do.end.i61:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.29) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call fastcc i32 @bt1_axi_init_sysfs(ptr noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end.i61, %if.end13.cleanup_crit_edge, %bt1_axi_request_clk.exit.cleanup_crit_edge, %do.end20.i, %do.end11.i53, %bt1_axi_request_rst.exit.cleanup_crit_edge, %bt1_axi_request_rst.exit.thread70, %bt1_axi_request_regs.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i40, %bt1_axi_request_regs.exit.cleanup_crit_edge ], [ %24, %bt1_axi_request_rst.exit.cleanup_crit_edge ], [ %40, %bt1_axi_request_clk.exit.cleanup_crit_edge ], [ %call18, %if.end17 ], [ %call7.i44, %bt1_axi_request_rst.exit.thread70 ], [ %call.i35.i, %do.end20.i ], [ %retval.0.i.ph.i, %do.end11.i53 ], [ %call.i.i58, %do.end.i61 ], [ %call.i56, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bt1_axi_init_sysfs(ptr noundef %axi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %axi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %axi, align 4
  %call = tail call i32 @device_add_groups(ptr noundef %1, ptr noundef nonnull @bt1_axi_sysfs_groups) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %2 = ptrtoint ptr %axi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %axi, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @bt1_axi_remove_sysfs, ptr noundef %axi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %axi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %axi, align 4
  tail call void @device_remove_groups(ptr noundef %5, ptr noundef nonnull @bt1_axi_sysfs_groups) #7
  %6 = ptrtoint ptr %axi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %axi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.39) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %do.end8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bt1_axi_clear_data(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bt1_axi_disable_clk(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %aclk = getelementptr inbounds %struct.bt1_axi, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aclk, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt1_axi_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low) #7
  %0 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %low, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %high) #7
  %1 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %high, align 4
  %sys_regs = getelementptr inbounds %struct.bt1_axi, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sys_regs, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 272, ptr noundef nonnull %low) #7
  %4 = ptrtoint ptr %sys_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sys_regs, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 276, ptr noundef nonnull %high) #7
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @bt1_axi_isr._rs, ptr noundef nonnull @__func__.bt1_axi_isr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %count = getelementptr inbounds %struct.bt1_axi, ptr %data, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !116
  call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #7
  %8 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #7, !srcloc !117
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !118
  %9 = ptrtoint ptr %high to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %high, align 4
  %and = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool6.not, ptr @.str.35, ptr @.str.34
  %11 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %low, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %7, ptr noundef nonnull @.str.32, i32 noundef %asmresult.i.i.i.i, ptr noundef nonnull %cond, i32 noundef %10, i32 noundef %12) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  call void @arch_trigger_cpumask_backtrace(ptr noundef nonnull @__cpu_online_mask, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %high) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_trigger_cpumask_backtrace(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bt1_axi_remove_sysfs(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @device_remove_groups(ptr noundef %1, ptr noundef nonnull @bt1_axi_sysfs_groups) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %count = getelementptr inbounds %struct.bt1_axi, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.42, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inject_error_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.44) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inject_error_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %data, ptr noundef nonnull @.str.45) #7
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %qos_regs = getelementptr inbounds %struct.bt1_axi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %qos_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qos_regs, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  br label %cleanup

if.else:                                          ; preds = %entry
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %data, ptr noundef nonnull @.str.46) #7
  br i1 %call4, label %do.body, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %qos_regs6 = getelementptr inbounds %struct.bt1_axi, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %qos_regs6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qos_regs6, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 0) #7, !srcloc !122
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ %count, %do.body ], [ %count, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !73, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !91, !93, !94, !96, !98, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_bt1_axi__187_310_bt1_axi_driver_init6, !1, !"__initcall__kmod_bt1_axi__187_310_bt1_axi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bus/bt1-axi.c", i32 310, i32 1}
!2 = !{ptr @__exitcall_bt1_axi_driver_exit, !1, !"__exitcall_bt1_axi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/bus/bt1-axi.c", i32 312, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/bus/bt1-axi.c", i32 313, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/bus/bt1-axi.c", i32 314, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bus/bt1-axi.c", i32 306, i32 11}
!12 = !{ptr @bt1_axi_driver, !13, !"bt1_axi_driver", i1 false, i1 false}
!13 = !{!"../drivers/bus/bt1-axi.c", i32 303, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bus/bt1-axi.c", i32 104, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bt1_axi_create_data._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bt1_axi_create_data._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bus/bt1-axi.c", i32 120, i32 64}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bus/bt1-axi.c", i32 122, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bt1_axi_request_regs._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @bt1_axi_request_regs._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bus/bt1-axi.c", i32 126, i32 62}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bus/bt1-axi.c", i32 128, i32 3}
!33 = !{ptr @bt1_axi_request_regs._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @bt1_axi_request_regs._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/bus/bt1-axi.c", i32 137, i32 66}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bus/bt1-axi.c", i32 139, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @bt1_axi_request_rst._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @bt1_axi_request_rst._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bus/bt1-axi.c", i32 145, i32 3}
!45 = !{ptr @bt1_axi_request_rst._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bt1_axi_request_rst._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/bus/bt1-axi.c", i32 161, i32 37}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bus/bt1-axi.c", i32 163, i32 3}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bt1_axi_request_clk._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @bt1_axi_request_clk._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bus/bt1-axi.c", i32 169, i32 3}
!56 = !{ptr @bt1_axi_request_clk._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bt1_axi_request_clk._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bus/bt1-axi.c", i32 175, i32 3}
!60 = !{ptr @bt1_axi_request_clk._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @bt1_axi_request_clk._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bus/bt1-axi.c", i32 192, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @bt1_axi_request_irq._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @bt1_axi_request_irq._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/bus/bt1-axi.c", i32 66, i32 2}
!69 = !{ptr @bt1_axi_isr._rs, !68, !"_rs", i1 false, i1 false}
!70 = !{ptr @__func__.bt1_axi_isr, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @bt1_axi_isr._entry, !68, !"_entry", i1 false, i1 false}
!74 = !{ptr @bt1_axi_isr._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/bus/bt1-axi.c", i32 254, i32 3}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @bt1_axi_init_sysfs._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @bt1_axi_init_sysfs._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/bus/bt1-axi.c", i32 260, i32 3}
!84 = !{ptr @bt1_axi_init_sysfs._entry.38, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @bt1_axi_init_sysfs._entry_ptr.40, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @bt1_axi_sysfs_groups, !87, !"bt1_axi_sysfs_groups", i1 false, i1 false}
!87 = !{!"../drivers/bus/bt1-axi.c", i32 239, i32 1}
!88 = !{ptr @bt1_axi_sysfs_group, !87, !"bt1_axi_sysfs_group", i1 false, i1 false}
!89 = !{ptr @bt1_axi_sysfs_attrs, !90, !"bt1_axi_sysfs_attrs", i1 false, i1 false}
!90 = !{!"../drivers/bus/bt1-axi.c", i32 234, i32 26}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/bus/bt1-axi.c", i32 204, i32 8}
!93 = !{ptr @dev_attr_count, !92, !"dev_attr_count", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/bus/bt1-axi.c", i32 202, i32 35}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/bus/bt1-axi.c", i32 232, i32 8}
!98 = !{ptr @dev_attr_inject_error, !97, !"dev_attr_inject_error", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/bus/bt1-axi.c", i32 209, i32 35}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/bus/bt1-axi.c", i32 223, i32 24}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/bus/bt1-axi.c", i32 225, i32 29}
!105 = !{ptr @bt1_axi_of_match, !106, !"bt1_axi_of_match", i1 false, i1 false}
!106 = !{!"../drivers/bus/bt1-axi.c", i32 297, i32 34}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2148300434}
!117 = !{i64 2148215743, i64 2148215775, i64 2148215804, i64 2148215838, i64 2148215869, i64 2148215892}
!118 = !{i64 2148300663}
!119 = !{i64 4883921}
!120 = !{i64 2153298551}
!121 = !{i64 2153298759}
!122 = !{i64 4883526}
