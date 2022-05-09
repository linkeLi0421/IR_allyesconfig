; ModuleID = '/llk/IR_all_yes/drivers/fpga/altera-ps-spi.c_pt.bc'
source_filename = "../drivers/fpga/altera-ps-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fpga_manager_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.altera_ps_data = type { i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.altera_ps_conf = type { ptr, ptr, ptr, ptr, ptr, i32, [64 x i8] }
%struct.fpga_manager = type { ptr, %struct.device, %struct.mutex, i32, ptr, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_altera_ps_spi__232_328_altera_ps_driver_init6 = internal global ptr @altera_ps_driver_init, section ".initcall6.init", align 4
@altera_ps_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @altera_ps_spi_ids, ptr @altera_ps_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ef_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_altera_ps_driver_exit = internal global ptr @altera_ps_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [46 x i8] c"altera_ps_spi.file=drivers/fpga/altera-ps-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [29 x i8] c"altera_ps_spi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [63 x i8] c"altera_ps_spi.author=Joshua Clayton <stillcompiling@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [71 x i8] c"altera_ps_spi.description=Module to load Altera FPGA firmware over SPI\00", section ".modinfo", align 1
@altera_ps_spi_ids = internal constant { [4 x %struct.spi_device_id], [48 x i8] } { [4 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"cyclone-ps-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"fpga-passive-serial\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"fpga-arria10-passive-serial\00\00\00\00\00", i32 1 }, %struct.spi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"altera-ps-spi\00", [18 x i8] zeroinitializer }, align 32
@of_ef_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,fpga-passive-serial\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @c5_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,fpga-arria10-passive-serial\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a10_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nconfig\00", [24 x i8] zeroinitializer }, align 32
@altera_ps_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get config gpio: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"altera_ps_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/fpga/altera-ps-spi.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@altera_ps_probe._entry_ptr = internal global ptr @altera_ps_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nstat\00", [26 x i8] zeroinitializer }, align 32
@altera_ps_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 288, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get status gpio: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@altera_ps_probe._entry_ptr.10 = internal global ptr @altera_ps_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"confd\00", [26 x i8] zeroinitializer }, align 32
@altera_ps_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 295, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get confd gpio: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@altera_ps_probe._entry_ptr.14 = internal global ptr @altera_ps_probe._entry.12, section ".printk_index", align 4
@altera_ps_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 298, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Not using confd gpio\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@altera_ps_probe._entry_ptr.18 = internal global ptr @altera_ps_probe._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@altera_ps_ops = internal constant { %struct.fpga_manager_ops, [60 x i8] } { %struct.fpga_manager_ops { i32 0, ptr @altera_ps_state, ptr null, ptr @altera_ps_write_init, ptr @altera_ps_write, ptr null, ptr @altera_ps_write_complete, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@altera_ps_data_map = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @c5_data, ptr @a10_data], [24 x i8] zeroinitializer }, align 32
@c5_data = internal global { %struct.altera_ps_data, [44 x i8] } { %struct.altera_ps_data { i32 0, i32 268, i32 1506, i32 2, i32 2 }, [44 x i8] zeroinitializer }, align 32
@a10_data = internal global { %struct.altera_ps_data, [44 x i8] } { %struct.altera_ps_data { i32 1, i32 268, i32 3000, i32 2, i32 10 }, [44 x i8] zeroinitializer }, align 32
@altera_ps_write_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Partial reconfiguration not supported.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"altera_ps_write_init\00", [43 x i8] zeroinitializer }, align 32
@altera_ps_write_init._entry_ptr = internal global ptr @altera_ps_write_init._entry, section ".printk_index", align 4
@altera_ps_write_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 127, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Status pin failed to show a reset\0A\00", [61 x i8] zeroinitializer }, align 32
@altera_ps_write_init._entry_ptr.24 = internal global ptr @altera_ps_write_init._entry.22, section ".printk_index", align 4
@altera_ps_write_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Status pin not ready.\0A\00", [41 x i8] zeroinitializer }, align 32
@altera_ps_write_init._entry_ptr.27 = internal global ptr @altera_ps_write_init._entry.25, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@altera_ps_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 192, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"spi error in firmware write: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"altera_ps_write\00", [16 x i8] zeroinitializer }, align 32
@altera_ps_write._entry_ptr = internal global ptr @altera_ps_write._entry, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@altera_ps_write_complete.dummy = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@altera_ps_write_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 209, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error during configuration.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"altera_ps_write_complete\00", [39 x i8] zeroinitializer }, align 32
@altera_ps_write_complete._entry_ptr = internal global ptr @altera_ps_write_complete._entry, section ".printk_index", align 4
@altera_ps_write_complete._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CONF_DONE is inactive!\0A\00", [40 x i8] zeroinitializer }, align 32
@altera_ps_write_complete._entry_ptr.34 = internal global ptr @altera_ps_write_complete._entry.32, section ".printk_index", align 4
@altera_ps_write_complete._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.4, i32 226, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"spi error during end sequence: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@altera_ps_write_complete._entry_ptr.37 = internal global ptr @altera_ps_write_complete._entry.35, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"altera_ps_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 318, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"altera_ps_spi_ids\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 310, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 320, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"of_ef_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 81, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 278, i32 43 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 280, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 285, i32 43 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 287, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 292, i32 51 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 294, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 298, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 302, i32 51 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"altera_ps_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 233, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"altera_ps_data_map\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 76, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant [8 x i8] c"c5_data\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 58, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant [9 x i8] c"a10_data\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 67, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 117, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 127, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 149, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 191, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 205, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 209, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 215, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [32 x i8] c"../drivers/fpga/altera-ps-spi.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 226, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_altera_ps_driver_exit, ptr @__initcall__kmod_altera_ps_spi__232_328_altera_ps_driver_init6, ptr @altera_ps_driver_exit, ptr @altera_ps_probe._entry, ptr @altera_ps_probe._entry.12, ptr @altera_ps_probe._entry.15, ptr @altera_ps_probe._entry.8, ptr @altera_ps_probe._entry_ptr, ptr @altera_ps_probe._entry_ptr.10, ptr @altera_ps_probe._entry_ptr.14, ptr @altera_ps_probe._entry_ptr.18, ptr @altera_ps_write._entry, ptr @altera_ps_write._entry_ptr, ptr @altera_ps_write_complete._entry, ptr @altera_ps_write_complete._entry.32, ptr @altera_ps_write_complete._entry.35, ptr @altera_ps_write_complete._entry_ptr, ptr @altera_ps_write_complete._entry_ptr.34, ptr @altera_ps_write_complete._entry_ptr.37, ptr @altera_ps_write_init._entry, ptr @altera_ps_write_init._entry.22, ptr @altera_ps_write_init._entry.25, ptr @altera_ps_write_init._entry_ptr, ptr @altera_ps_write_init._entry_ptr.24, ptr @altera_ps_write_init._entry_ptr.27, ptr @altera_ps_driver, ptr @altera_ps_spi_ids, ptr @.str, ptr @of_ef_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @altera_ps_ops, ptr @altera_ps_data_map, ptr @c5_data, ptr @a10_data, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @altera_ps_write_complete.dummy, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_spi_ids to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ef_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_data_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c5_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_write_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_write_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_write_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_write_complete.dummy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_write_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_write_complete._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ps_write_complete._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ps_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @altera_ps_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @altera_ps_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @altera_ps_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ps_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 88, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call5 = tail call ptr @of_match_device(ptr noundef nonnull @of_ef_match, ptr noundef %spi) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then3.cleanup_crit_edge, label %if.end8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.of_device_id, ptr %call5, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end
  %call10 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %driver_data.i = getelementptr inbounds %struct.spi_device_id, ptr %call10, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp ugt i32 %5, 1
  br i1 %cmp.i, label %if.else.id_to_data.exit.thread_crit_edge, label %if.end.i

if.else.id_to_data.exit.thread_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %id_to_data.exit.thread

if.end.i:                                         ; preds = %if.else
  %arrayidx.i = getelementptr [2 x ptr], ptr @altera_ps_data_map, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp2.not.i = icmp eq i32 %9, %5
  br i1 %cmp2.not.i, label %if.end.i.if.end17_crit_edge, label %if.end.i.id_to_data.exit.thread_crit_edge

if.end.i.id_to_data.exit.thread_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %id_to_data.exit.thread

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

id_to_data.exit.thread:                           ; preds = %if.end.i.id_to_data.exit.thread_crit_edge, %if.else.id_to_data.exit.thread_crit_edge
  %data12121 = getelementptr inbounds %struct.altera_ps_conf, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %data12121 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %data12121, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end.i.if.end17_crit_edge, %if.end8
  %.sink = phi ptr [ %3, %if.end8 ], [ %7, %if.end.i.if.end17_crit_edge ]
  %data12 = getelementptr inbounds %struct.altera_ps_conf, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %data12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.sink, ptr %data12, align 4
  %spi18 = getelementptr inbounds %struct.altera_ps_conf, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %spi18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spi, ptr %spi18, align 4
  %call20 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 3) #7
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call20, ptr %call.i, align 4
  %cmp.i114 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %do.end, label %if.end29

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef %14) #10
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end17
  %call31 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef 1) #7
  %status = getelementptr inbounds %struct.altera_ps_conf, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call31, ptr %status, align 4
  %cmp.i115 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %do.end37, label %if.end43

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call31 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9, i32 noundef %19) #10
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %status, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end29
  %call45 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.11, i32 noundef 1) #7
  %confd = getelementptr inbounds %struct.altera_ps_conf, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %confd to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call45, ptr %confd, align 4
  %cmp.i116 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %do.end51, label %if.else57

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %24) #10
  %25 = ptrtoint ptr %confd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %confd, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.else57:                                        ; preds = %if.end43
  %tobool59.not = icmp eq ptr %call45, null
  br i1 %tobool59.not, label %do.end63, label %if.else57.if.end66_crit_edge

if.else57.if.end66_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

do.end63:                                         ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.16) #10
  br label %if.end66

if.end66:                                         ; preds = %do.end63, %if.else57.if.end66_crit_edge
  %mgr_name = getelementptr inbounds %struct.altera_ps_conf, ptr %call.i, i32 0, i32 6
  %call68 = tail call ptr @dev_driver_string(ptr noundef %spi) #7
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.i117, label %if.end66.dev_name.exit_crit_edge

if.end66.dev_name.exit_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i117:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i117, %if.end66.dev_name.exit_crit_edge
  %retval.0.i118 = phi ptr [ %31, %if.end.i117 ], [ %29, %if.end66.dev_name.exit_crit_edge ]
  %call71 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %mgr_name, i32 noundef 64, ptr noundef nonnull @.str.19, ptr noundef %call68, ptr noundef %retval.0.i118)
  %call75 = tail call ptr @devm_fpga_mgr_register(ptr noundef %spi, ptr noundef %mgr_name, ptr noundef nonnull @altera_ps_ops, ptr noundef nonnull %call.i) #7
  %cmp.i.i = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  %32 = ptrtoint ptr %call75 to i32
  %spec.select.i119 = select i1 %cmp.i.i, i32 %32, i32 0
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %do.end51, %do.end37, %do.end, %id_to_data.exit.thread, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %do.end ], [ %22, %do.end37 ], [ %27, %do.end51 ], [ %spec.select.i119, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.then3.cleanup_crit_edge ], [ -19, %id_to_data.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fpga_mgr_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ps_state(ptr nocapture noundef readonly %mgr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %status = getelementptr inbounds %struct.altera_ps_conf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 3
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ps_write_init(ptr noundef %mgr, ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %info_flags = getelementptr inbounds %struct.altera_ps_conf, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %info_flags, align 4
  %5 = load i32, ptr %info, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #7
  %data = getelementptr inbounds %struct.altera_ps_conf, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %t_cfg_us = getelementptr inbounds %struct.altera_ps_data, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %t_cfg_us to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_cfg_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp.i = icmp sgt i32 %11, 10
  br i1 %cmp.i, label %if.then.i, label %cond.false3.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nuw i32 %11, 5
  tail call void @usleep_range_state(i32 noundef %11, i32 noundef %add.i, i32 noundef 2) #7
  br label %altera_ps_delay.exit

cond.false3.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %12(i32 noundef %11) #7
  br label %altera_ps_delay.exit

altera_ps_delay.exit:                             ; preds = %cond.false3.i, %if.then.i
  %status = getelementptr inbounds %struct.altera_ps_conf, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %status, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %altera_ps_delay.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end8:                                          ; preds = %altera_ps_delay.exit
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef 0) #7
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %status_wait_min_us = getelementptr inbounds %struct.altera_ps_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %status_wait_min_us to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status_wait_min_us, align 4
  %status_wait_max_us = getelementptr inbounds %struct.altera_ps_data, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %status_wait_max_us to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status_wait_max_us, align 4
  %.frozen = freeze i32 %22
  %.frozen58 = freeze i32 %20
  %div = sdiv i32 %.frozen, %.frozen58
  %23 = mul i32 %div, %.frozen58
  %rem.decomposed = sub i32 %.frozen, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool12.not = icmp ne i32 %rem.decomposed, 0
  %inc = zext i1 %tobool12.not to i32
  %spec.select = add i32 %div, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp56 = icmp sgt i32 %spec.select, 0
  br i1 %cmp56, label %for.body.lr.ph, label %if.end8.do.end24_crit_edge

if.end8.do.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

for.body.lr.ph:                                   ; preds = %if.end8
  %add = add i32 %20, 10
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc21 = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc21, %spec.select
  br i1 %exitcond.not, label %for.cond.do.end24_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.do.end24_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %for.cond.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef %20, i32 noundef %add, i32 noundef 2) #7
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %status, align 4
  %call16 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %for.cond

if.then18:                                        ; preds = %for.body
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %t_st2ck_us = getelementptr inbounds %struct.altera_ps_data, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %t_st2ck_us to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t_st2ck_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %29)
  %cmp.i48 = icmp sgt i32 %29, 10
  br i1 %cmp.i48, label %if.then.i50, label %cond.false3.i54

if.then.i50:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %add.i49 = add nuw i32 %29, 5
  tail call void @usleep_range_state(i32 noundef %29, i32 noundef %add.i49, i32 noundef 2) #7
  br label %cleanup

cond.false3.i54:                                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %30(i32 noundef %29) #7
  br label %cleanup

do.end24:                                         ; preds = %for.cond.do.end24_crit_edge, %if.end8.do.end24_crit_edge
  %dev25 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.26) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %cond.false3.i54, %if.then.i50, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end24 ], [ -5, %do.end6 ], [ 0, %if.then.i50 ], [ 0, %cond.false3.i54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ps_write(ptr noundef %mgr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 %count
  %cmp27 = icmp ugt ptr %add.ptr, %buf
  br i1 %cmp27, label %while.body.lr.ph, label %entry.cleanup7_crit_edge

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup7

while.body.lr.ph:                                 ; preds = %entry
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %info_flags = getelementptr inbounds %struct.altera_ps_conf, ptr %1, i32 0, i32 5
  %spi = getelementptr inbounds %struct.altera_ps_conf, ptr %1, i32 0, i32 3
  %2 = getelementptr inbounds i8, ptr %t.i, i32 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %3 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %fw_data.028 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr5, %cleanup.while.body_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %fw_data.028 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = call i32 @llvm.umin.i32(i32 %sub.ptr.sub, i32 4096)
  %5 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %info_flags, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.body
  %and.i = and i32 %4, 3
  %add.ptr.i = getelementptr i8, ptr %fw_data.028, i32 %4
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %cmp81.i = icmp ugt ptr %add.ptr1.i, %fw_data.028
  br i1 %cmp81.i, label %if.then.cond.end.i_crit_edge, label %if.then.while.end.i_crit_edge

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.then.cond.end.i_crit_edge:                     ; preds = %if.then
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.end.i.cond.end.i_crit_edge, %if.then.cond.end.i_crit_edge
  %fw32.082.i = phi ptr [ %incdec.ptr.i, %cond.end.i.cond.end.i_crit_edge ], [ %fw_data.028, %if.then.cond.end.i_crit_edge ]
  %7 = ptrtoint ptr %fw32.082.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw32.082.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #7
  %10 = lshr i32 %9, 8
  %conv4.i.i.i = and i32 %10, 255
  %arrayidx.i10.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.i
  %11 = ptrtoint ptr %arrayidx.i10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i10.i.i.i, align 1
  %conv6.i.i.i = zext i8 %12 to i32
  %13 = shl nuw nsw i32 %conv6.i.i.i, 16
  %14 = and i32 %9, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i = zext i8 %16 to i32
  %17 = shl nuw i32 %conv2.i.i.i, 24
  %or.i13.i.i = or i32 %13, %17
  %sum.shift.i.i = lshr i32 %9, 24
  %arrayidx.i10.i11.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.i
  %18 = ptrtoint ptr %arrayidx.i10.i11.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i10.i11.i.i, align 1
  %conv6.i12.i.i = zext i8 %19 to i32
  %shl.i.i = or i32 %or.i13.i.i, %conv6.i12.i.i
  %shr.i.i = lshr i32 %9, 16
  %20 = and i32 %shr.i.i, 255
  %arrayidx.i.i7.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i7.i.i, align 1
  %conv2.i8.i.i = zext i8 %22 to i32
  %shl.i9.i.i = shl nuw nsw i32 %conv2.i8.i.i, 8
  %or.i.i = or i32 %shl.i.i, %shl.i9.i.i
  %23 = ptrtoint ptr %fw32.082.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i, ptr %fw32.082.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %fw32.082.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr1.i
  br i1 %cmp.i, label %cond.end.i.cond.end.i_crit_edge, label %cond.end.i.while.end.i_crit_edge

cond.end.i.while.end.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

cond.end.i.cond.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

while.end.i:                                      ; preds = %cond.end.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.end.i.if.end_crit_edge, label %cond.end48.i

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.end48.i:                                     ; preds = %while.end.i
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr1.i, align 1
  %idxprom.i.i = zext i8 %25 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i, align 1
  store i8 %27, ptr %add.ptr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 1
  br i1 %tobool16.not.i, label %cond.end48.i.if.end_crit_edge, label %cond.end48.i.1

cond.end48.i.if.end_crit_edge:                    ; preds = %cond.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.end48.i.1:                                   ; preds = %cond.end48.i
  %incdec.ptr51.i = getelementptr i8, ptr %add.ptr1.i, i32 1
  %28 = ptrtoint ptr %incdec.ptr51.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr51.i, align 1
  %idxprom.i.i.1 = zext i8 %29 to i32
  %arrayidx.i.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.1
  %30 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i.1, align 1
  store i8 %31, ptr %incdec.ptr51.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %tobool16.not.i.1 = icmp eq i32 %and.i, 2
  br i1 %tobool16.not.i.1, label %cond.end48.i.1.if.end_crit_edge, label %cond.end48.i.2

cond.end48.i.1.if.end_crit_edge:                  ; preds = %cond.end48.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.end48.i.2:                                   ; preds = %cond.end48.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr51.i.1 = getelementptr i8, ptr %incdec.ptr51.i, i32 1
  %32 = ptrtoint ptr %incdec.ptr51.i.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr51.i.1, align 1
  %idxprom.i.i.2 = zext i8 %33 to i32
  %arrayidx.i.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.2
  %34 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i.2, align 1
  store i8 %35, ptr %incdec.ptr51.i.1, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end48.i.2, %cond.end48.i.1.if.end_crit_edge, %cond.end48.i.if.end_crit_edge, %while.end.i.if.end_crit_edge, %while.body.if.end_crit_edge
  %36 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %38 = call ptr @memset(ptr %2, i32 0, i32 92)
  %39 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %fw_data.028, ptr %t.i, align 4
  %40 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %41 = call ptr @memset(ptr %3, i32 0, i32 40)
  %42 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %43 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %48 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %37, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call.i.i) #10
  br label %cleanup7

cleanup:                                          ; preds = %spi_write.exit
  %add.ptr5 = getelementptr i8, ptr %fw_data.028, i32 %4
  %cmp = icmp ult ptr %add.ptr5, %add.ptr
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup7_crit_edge

cleanup.cleanup7_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup7

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup7:                                         ; preds = %cleanup.cleanup7_crit_edge, %cleanup.thread, %entry.cleanup7_crit_edge
  %retval.2 = phi i32 [ %call.i.i, %cleanup.thread ], [ 0, %entry.cleanup7_crit_edge ], [ 0, %cleanup.cleanup7_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ps_write_complete(ptr noundef %mgr, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %status = getelementptr inbounds %struct.altera_ps_conf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %confd = getelementptr inbounds %struct.altera_ps_conf, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %confd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %confd, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end12_crit_edge, label %if.then2

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @gpiod_get_raw_value_cansleep(ptr noundef nonnull %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end9, label %if.then2.if.end12_crit_edge

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end9:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end12:                                         ; preds = %if.then2.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %spi = getelementptr inbounds %struct.altera_ps_conf, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %8 = getelementptr inbounds i8, ptr %t.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @altera_ps_write_complete.dummy, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %11 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %12 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end12.spi_write.exit_crit_edge

if.end12.spi_write.exit_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end12.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %7, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not, label %spi_write.exit.cleanup_crit_edge, label %do.end18

spi_write.exit.cleanup_crit_edge:                 ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end18:                                         ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev19 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.36, i32 noundef %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %spi_write.exit.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call.i.i, %do.end18 ], [ -5, %do.end9 ], [ 0, %spi_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_altera_ps_spi__232_328_altera_ps_driver_init6, !1, !"__initcall__kmod_altera_ps_spi__232_328_altera_ps_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/fpga/altera-ps-spi.c", i32 328, i32 1}
!2 = !{ptr @__exitcall_altera_ps_driver_exit, !1, !"__exitcall_altera_ps_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file233, !4, !"__UNIQUE_ID_file233", i1 false, i1 false}
!4 = !{!"../drivers/fpga/altera-ps-spi.c", i32 330, i32 1}
!5 = !{ptr @__UNIQUE_ID_license234, !4, !"__UNIQUE_ID_license234", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author235, !7, !"__UNIQUE_ID_author235", i1 false, i1 false}
!7 = !{!"../drivers/fpga/altera-ps-spi.c", i32 331, i32 1}
!8 = !{ptr @__UNIQUE_ID_description236, !9, !"__UNIQUE_ID_description236", i1 false, i1 false}
!9 = !{!"../drivers/fpga/altera-ps-spi.c", i32 332, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/fpga/altera-ps-spi.c", i32 320, i32 11}
!12 = !{ptr @altera_ps_driver, !13, !"altera_ps_driver", i1 false, i1 false}
!13 = !{!"../drivers/fpga/altera-ps-spi.c", i32 318, i32 26}
!14 = !{ptr @altera_ps_spi_ids, !15, !"altera_ps_spi_ids", i1 false, i1 false}
!15 = !{!"../drivers/fpga/altera-ps-spi.c", i32 310, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/fpga/altera-ps-spi.c", i32 278, i32 43}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/fpga/altera-ps-spi.c", i32 280, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @altera_ps_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @altera_ps_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/fpga/altera-ps-spi.c", i32 285, i32 43}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/fpga/altera-ps-spi.c", i32 287, i32 3}
!30 = !{ptr @altera_ps_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @altera_ps_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/fpga/altera-ps-spi.c", i32 292, i32 51}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/fpga/altera-ps-spi.c", i32 294, i32 3}
!36 = !{ptr @altera_ps_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @altera_ps_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/fpga/altera-ps-spi.c", i32 298, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @altera_ps_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @altera_ps_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/fpga/altera-ps-spi.c", i32 302, i32 51}
!45 = !{ptr @altera_ps_data_map, !46, !"altera_ps_data_map", i1 false, i1 false}
!46 = !{!"../drivers/fpga/altera-ps-spi.c", i32 76, i32 37}
!47 = !{ptr @c5_data, !48, !"c5_data", i1 false, i1 false}
!48 = !{!"../drivers/fpga/altera-ps-spi.c", i32 58, i32 30}
!49 = !{ptr @a10_data, !50, !"a10_data", i1 false, i1 false}
!50 = !{!"../drivers/fpga/altera-ps-spi.c", i32 67, i32 30}
!51 = !{ptr @altera_ps_ops, !52, !"altera_ps_ops", i1 false, i1 false}
!52 = !{!"../drivers/fpga/altera-ps-spi.c", i32 233, i32 38}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/fpga/altera-ps-spi.c", i32 117, i32 3}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @altera_ps_write_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @altera_ps_write_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/fpga/altera-ps-spi.c", i32 127, i32 3}
!60 = !{ptr @altera_ps_write_init._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @altera_ps_write_init._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/fpga/altera-ps-spi.c", i32 149, i32 2}
!64 = !{ptr @altera_ps_write_init._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @altera_ps_write_init._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/fpga/altera-ps-spi.c", i32 191, i32 4}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @altera_ps_write._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @altera_ps_write._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @altera_ps_write_complete.dummy, !72, !"dummy", i1 false, i1 false}
!72 = !{!"../drivers/fpga/altera-ps-spi.c", i32 205, i32 20}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/fpga/altera-ps-spi.c", i32 209, i32 3}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @altera_ps_write_complete._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @altera_ps_write_complete._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/fpga/altera-ps-spi.c", i32 215, i32 4}
!80 = !{ptr @altera_ps_write_complete._entry.32, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @altera_ps_write_complete._entry_ptr.34, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/fpga/altera-ps-spi.c", i32 226, i32 3}
!84 = !{ptr @altera_ps_write_complete._entry.35, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @altera_ps_write_complete._entry_ptr.37, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @of_ef_match, !87, !"of_ef_match", i1 false, i1 false}
!87 = !{!"../drivers/fpga/altera-ps-spi.c", i32 81, i32 34}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
