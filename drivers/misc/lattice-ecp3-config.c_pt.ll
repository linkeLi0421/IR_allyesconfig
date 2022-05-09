; ModuleID = '/llk/IR_all_yes/drivers/misc/lattice-ecp3-config.c_pt.bc'
source_filename = "../drivers/misc/lattice-ecp3-config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ecp3_dev = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_lattice_ecp3_config__233_239_lattice_ecp3_driver_init6 = internal global ptr @lattice_ecp3_driver_init, section ".initcall6.init", align 4
@lattice_ecp3_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @lattice_ecp3_id, ptr @lattice_ecp3_probe, ptr @lattice_ecp3_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lattice_ecp3_driver_exit = internal global ptr @lattice_ecp3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author234 = internal constant [53 x i8] c"lattice_ecp3_config.author=Stefan Roese <sr@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [72 x i8] c"lattice_ecp3_config.description=Lattice ECP3 FPGA configuration via SPI\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [58 x i8] c"lattice_ecp3_config.file=drivers/misc/lattice-ecp3-config\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [32 x i8] c"lattice_ecp3_config.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware238 = internal constant [46 x i8] c"lattice_ecp3_config.firmware=lattice-ecp3.bit\00", section ".modinfo", align 1
@lattice_ecp3_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ecp3-17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ecp3-35\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lattice-ecp3\00", [19 x i8] zeroinitializer }, align 32
@lattice_ecp3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Memory allocation for fpga_data failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lattice_ecp3_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/misc/lattice-ecp3-config.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lattice_ecp3_probe._entry_ptr = internal global ptr @lattice_ecp3_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lattice-ecp3.bit\00", [47 x i8] zeroinitializer }, align 32
@lattice_ecp3_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 205, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Firmware loading failed with %d!\0A\00", [62 x i8] zeroinitializer }, align 32
@lattice_ecp3_probe._entry_ptr.9 = internal global ptr @lattice_ecp3_probe._entry.7, section ".printk_index", align 4
@lattice_ecp3_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 209, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"FPGA bitstream configuration driver registered\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lattice_ecp3_probe._entry_ptr.13 = internal global ptr @lattice_ecp3_probe._entry.10, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@firmware_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 78, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot load firmware, aborting\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware_load\00", [18 x i8] zeroinitializer }, align 32
@firmware_load._entry_ptr = internal global ptr @firmware_load._entry, section ".printk_index", align 4
@firmware_load._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 83, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error: Firmware size is 0!\0A\00", [36 x i8] zeroinitializer }, align 32
@firmware_load._entry_ptr.19 = internal global ptr @firmware_load._entry.17, section ".printk_index", align 4
@firmware_load.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.16, ptr @.str.3, ptr @.str.21, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lattice_ecp3_config\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FPGA JTAG ID=%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@ecp3_dev = internal constant { [2 x %struct.ecp3_dev], [16 x i8] } { [2 x %struct.ecp3_dev] [%struct.ecp3_dev { i32 -1039630208, ptr @.str.44 }, %struct.ecp3_dev { i32 -1039892352, ptr @.str.45 }], [16 x i8] zeroinitializer }, align 32
@firmware_load._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.3, i32 105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Error: No supported FPGA detected (JEDEC_ID=%08x)!\0A\00", [44 x i8] zeroinitializer }, align 32
@firmware_load._entry_ptr.24 = internal global ptr @firmware_load._entry.22, section ".printk_index", align 4
@firmware_load._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.16, ptr @.str.3, i32 109, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FPGA %s detected\0A\00", [46 x i8] zeroinitializer }, align 32
@firmware_load._entry_ptr.27 = internal global ptr @firmware_load._entry.25, section ".printk_index", align 4
@firmware_load.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.16, ptr @.str.3, ptr @.str.28, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FPGA Status=%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@firmware_load._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error: Can't allocate memory!\0A\00", [33 x i8] zeroinitializer }, align 32
@firmware_load._entry_ptr.31 = internal global ptr @firmware_load._entry.29, section ".printk_index", align 4
@firmware_load._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.3, i32 156, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Error: Timeout waiting for FPGA to clear (status=%08x)!\0A\00", [39 x i8] zeroinitializer }, align 32
@firmware_load._entry_ptr.34 = internal global ptr @firmware_load._entry.32, section ".printk_index", align 4
@firmware_load._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.16, ptr @.str.3, i32 161, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Configuring the FPGA...\0A\00", [39 x i8] zeroinitializer }, align 32
@firmware_load._entry_ptr.37 = internal global ptr @firmware_load._entry.35, section ".printk_index", align 4
@firmware_load.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.16, ptr @.str.3, ptr @.str.28, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@firmware_load._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.16, ptr @.str.3, i32 174, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FPGA successfully configured!\0A\00", [33 x i8] zeroinitializer }, align 32
@firmware_load._entry_ptr.40 = internal global ptr @firmware_load._entry.38, section ".printk_index", align 4
@firmware_load._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.16, ptr @.str.3, i32 176, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"FPGA not configured (DONE not set)\0A\00", [60 x i8] zeroinitializer }, align 32
@firmware_load._entry_ptr.43 = internal global ptr @firmware_load._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Lattice ECP3-17\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Lattice ECP3-35\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3255074944, i64 3255337088]
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"lattice_ecp3_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 230, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"lattice_ecp3_id\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 223, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 232, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 195, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 202, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 205, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 209, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 87, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 78, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 83, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 96, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [9 x i8] c"ecp3_dev\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 54, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 103, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 109, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 114, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 118, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 154, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 161, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 174, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 176, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 57, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [38 x i8] c"../drivers/misc/lattice-ecp3-config.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 61, i32 11 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_firmware238, ptr @__UNIQUE_ID_license237, ptr @__exitcall_lattice_ecp3_driver_exit, ptr @__initcall__kmod_lattice_ecp3_config__233_239_lattice_ecp3_driver_init6, ptr @firmware_load._entry, ptr @firmware_load._entry.17, ptr @firmware_load._entry.22, ptr @firmware_load._entry.25, ptr @firmware_load._entry.29, ptr @firmware_load._entry.32, ptr @firmware_load._entry.35, ptr @firmware_load._entry.38, ptr @firmware_load._entry.41, ptr @firmware_load._entry_ptr, ptr @firmware_load._entry_ptr.19, ptr @firmware_load._entry_ptr.24, ptr @firmware_load._entry_ptr.27, ptr @firmware_load._entry_ptr.31, ptr @firmware_load._entry_ptr.34, ptr @firmware_load._entry_ptr.37, ptr @firmware_load._entry_ptr.40, ptr @firmware_load._entry_ptr.43, ptr @lattice_ecp3_driver_exit, ptr @lattice_ecp3_probe._entry, ptr @lattice_ecp3_probe._entry.10, ptr @lattice_ecp3_probe._entry.7, ptr @lattice_ecp3_probe._entry_ptr, ptr @lattice_ecp3_probe._entry_ptr.13, ptr @lattice_ecp3_probe._entry_ptr.9, ptr @lattice_ecp3_driver, ptr @lattice_ecp3_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @init_completion.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @ecp3_dev, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lattice_ecp3_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lattice_ecp3_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lattice_ecp3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lattice_ecp3_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lattice_ecp3_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_load._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecp3_dev to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_load._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_load._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_load._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_load._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_load._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_load._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_load._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lattice_ecp3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @lattice_ecp3_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lattice_ecp3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @lattice_ecp3_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lattice_ecp3_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 56, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %call.i, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %call.i, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #6
  %call3 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef %spi, i32 noundef 3264, ptr noundef %spi, ptr noundef nonnull @firmware_load) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end13, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef %call3) #9
  br label %cleanup

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.11) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end8, %do.end
  %retval.0 = phi i32 [ %call3, %do.end8 ], [ 0, %do.end13 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lattice_ecp3_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @wait_for_completion(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @firmware_load(ptr noundef %fw, ptr noundef %context) #2 align 64 {
entry:
  %msg.i.i248 = alloca %struct.spi_message, align 4
  %t.i249 = alloca %struct.spi_transfer, align 4
  %msg.i.i236 = alloca %struct.spi_message, align 4
  %t.i237 = alloca %struct.spi_transfer, align 4
  %msg.i.i224 = alloca %struct.spi_message, align 4
  %t.i225 = alloca %struct.spi_transfer, align 4
  %msg.i.i212 = alloca %struct.spi_message, align 4
  %t.i213 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %txbuf = alloca [8 x i8], align 8
  %rxbuf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %txbuf) #6
  %2 = getelementptr inbounds [8 x i8], ptr %txbuf, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %txbuf, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %txbuf, i32 0, i32 3
  %5 = ptrtoint ptr %txbuf to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %txbuf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rxbuf) #6
  %6 = getelementptr inbounds [8 x i8], ptr %rxbuf, i32 0, i32 4
  %cmp = icmp eq ptr %fw, null
  %7 = ptrtoint ptr %rxbuf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %rxbuf, align 8
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %context, ptr noundef nonnull @.str.15) #9
  br label %out

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1 = icmp eq i32 %9, 0
  br i1 %cmp1, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %context, ptr noundef nonnull @.str.18) #9
  br label %out

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %2, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %3, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %4, align 1
  %13 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 7, ptr %txbuf, align 8
  %call12 = call i32 @spi_write_then_read(ptr noundef %context, ptr noundef nonnull %txbuf, i32 noundef 8, ptr noundef nonnull %rxbuf, i32 noundef 8) #6
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firmware_load.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firmware_load, %if.then19)) #6
          to label %do.end23 [label %if.then19], !srcloc !101

if.then19:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firmware_load.__UNIQUE_ID_ddebug230, ptr noundef %context, ptr noundef nonnull @.str.21, i32 noundef %15) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %if.end7
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %do.end34 [
    i32 -1039630208, label %do.end23.do.end39_crit_edge
    i32 -1039892352, label %do.end39.fold.split
  ]

do.end23.do.end39_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

do.end34:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %context, ptr noundef nonnull @.str.23, i32 noundef %15) #9
  br label %out

do.end39.fold.split:                              ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

do.end39:                                         ; preds = %do.end39.fold.split, %do.end23.do.end39_crit_edge
  %i.0273.lcssa = phi i32 [ 0, %do.end23.do.end39_crit_edge ], [ 1, %do.end39.fold.split ]
  %name = getelementptr [2 x %struct.ecp3_dev], ptr @ecp3_dev, i32 0, i32 %i.0273.lcssa, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %context, ptr noundef nonnull @.str.26, ptr noundef %18) #9
  %19 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 9, ptr %txbuf, align 8
  %call45 = call i32 @spi_write_then_read(ptr noundef %context, ptr noundef nonnull %txbuf, i32 noundef 8, ptr noundef nonnull %rxbuf, i32 noundef 8) #6
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firmware_load.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firmware_load, %if.then60)) #6
          to label %if.end8.i.i [label %if.then60], !srcloc !101

if.then60:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firmware_load.__UNIQUE_ID_ddebug231, ptr noundef %context, ptr noundef nonnull @.str.28, i32 noundef %21) #6
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then60, %do.end39
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw, align 4
  %add = add i32 %23, 8
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #10
  %tobool67.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool67.not, label %do.end71, label %if.end73

do.end71:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %context, ptr noundef nonnull @.str.30) #9
  br label %out

if.end73:                                         ; preds = %if.end8.i.i
  %24 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 65, ptr %call9.i.i, align 128
  %arrayidx75 = getelementptr i8, ptr %call9.i.i, i32 1
  %25 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %arrayidx75, align 1
  %arrayidx76 = getelementptr i8, ptr %call9.i.i, i32 2
  %26 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %arrayidx76, align 2
  %arrayidx77 = getelementptr i8, ptr %call9.i.i, i32 3
  %27 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %arrayidx77, align 1
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 4
  %data78 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %28 = ptrtoint ptr %data78 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data78, align 4
  %30 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fw, align 4
  %32 = call ptr @memcpy(ptr %add.ptr, ptr %29, i32 %31)
  %33 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 113, ptr %txbuf, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %34 = getelementptr inbounds i8, ptr %t.i, i32 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 92)
  %36 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %txbuf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %37 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %38 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 40)
  %40 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end73.spi_write.exit_crit_edge

if.end73.spi_write.exit_crit_edge:                ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end73.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  %48 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 74, ptr %txbuf, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i213) #6
  %49 = getelementptr inbounds i8, ptr %t.i213, i32 4
  %50 = call ptr @memset(ptr %49, i32 0, i32 92)
  %51 = ptrtoint ptr %t.i213 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %txbuf, ptr %t.i213, align 4
  %len1.i214 = getelementptr inbounds %struct.spi_transfer, ptr %t.i213, i32 0, i32 2
  %52 = ptrtoint ptr %len1.i214 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %len1.i214, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i212) #6
  %53 = getelementptr inbounds i8, ptr %msg.i.i212, i32 8
  %54 = call ptr @memset(ptr %53, i32 0, i32 40)
  %55 = ptrtoint ptr %msg.i.i212 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %msg.i.i212, ptr %msg.i.i212, align 4
  %prev.i.i.i.i.i.i215 = getelementptr inbounds %struct.list_head, ptr %msg.i.i212, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i.i.i.i215 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg.i.i212, ptr %prev.i.i.i.i.i.i215, align 4
  %resources.i.i.i.i.i216 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i212, i32 0, i32 10
  %57 = ptrtoint ptr %resources.i.i.i.i.i216 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %resources.i.i.i.i.i216, ptr %resources.i.i.i.i.i216, align 4
  %prev.i2.i.i.i.i.i217 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i212, i32 0, i32 10, i32 1
  %58 = ptrtoint ptr %prev.i2.i.i.i.i.i217 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %resources.i.i.i.i.i216, ptr %prev.i2.i.i.i.i.i217, align 4
  %transfer_list.i.i.i.i218 = getelementptr inbounds %struct.spi_transfer, ptr %t.i213, i32 0, i32 18
  %call.i.i.i.i.i.i219 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i218, ptr noundef nonnull %msg.i.i212, ptr noundef nonnull %msg.i.i212) #6
  br i1 %call.i.i.i.i.i.i219, label %if.end.i.i.i.i.i.i221, label %spi_write.exit.spi_write.exit223_crit_edge

spi_write.exit.spi_write.exit223_crit_edge:       ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit223

if.end.i.i.i.i.i.i221:                            ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %prev.i.i.i.i.i.i215 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %transfer_list.i.i.i.i218, ptr %prev.i.i.i.i.i.i215, align 4
  %60 = ptrtoint ptr %transfer_list.i.i.i.i218 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i212, ptr %transfer_list.i.i.i.i218, align 4
  %prev3.i.i.i.i.i.i220 = getelementptr inbounds %struct.spi_transfer, ptr %t.i213, i32 0, i32 18, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i.i.i.i220 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %msg.i.i212, ptr %prev3.i.i.i.i.i.i220, align 4
  %62 = ptrtoint ptr %msg.i.i212 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %transfer_list.i.i.i.i218, ptr %msg.i.i212, align 4
  br label %spi_write.exit223

spi_write.exit223:                                ; preds = %if.end.i.i.i.i.i.i221, %spi_write.exit.spi_write.exit223_crit_edge
  %call.i.i222 = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i212) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i212) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i213) #6
  %63 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 112, ptr %txbuf, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i225) #6
  %64 = getelementptr inbounds i8, ptr %t.i225, i32 4
  %65 = call ptr @memset(ptr %64, i32 0, i32 92)
  %66 = ptrtoint ptr %t.i225 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %txbuf, ptr %t.i225, align 4
  %len1.i226 = getelementptr inbounds %struct.spi_transfer, ptr %t.i225, i32 0, i32 2
  %67 = ptrtoint ptr %len1.i226 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %len1.i226, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i224) #6
  %68 = getelementptr inbounds i8, ptr %msg.i.i224, i32 8
  %69 = call ptr @memset(ptr %68, i32 0, i32 40)
  %70 = ptrtoint ptr %msg.i.i224 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %msg.i.i224, ptr %msg.i.i224, align 4
  %prev.i.i.i.i.i.i227 = getelementptr inbounds %struct.list_head, ptr %msg.i.i224, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i.i.i.i227 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i.i224, ptr %prev.i.i.i.i.i.i227, align 4
  %resources.i.i.i.i.i228 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i224, i32 0, i32 10
  %72 = ptrtoint ptr %resources.i.i.i.i.i228 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %resources.i.i.i.i.i228, ptr %resources.i.i.i.i.i228, align 4
  %prev.i2.i.i.i.i.i229 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i224, i32 0, i32 10, i32 1
  %73 = ptrtoint ptr %prev.i2.i.i.i.i.i229 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %resources.i.i.i.i.i228, ptr %prev.i2.i.i.i.i.i229, align 4
  %transfer_list.i.i.i.i230 = getelementptr inbounds %struct.spi_transfer, ptr %t.i225, i32 0, i32 18
  %call.i.i.i.i.i.i231 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i230, ptr noundef nonnull %msg.i.i224, ptr noundef nonnull %msg.i.i224) #6
  br i1 %call.i.i.i.i.i.i231, label %if.end.i.i.i.i.i.i233, label %spi_write.exit223.spi_write.exit235_crit_edge

spi_write.exit223.spi_write.exit235_crit_edge:    ; preds = %spi_write.exit223
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit235

if.end.i.i.i.i.i.i233:                            ; preds = %spi_write.exit223
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %prev.i.i.i.i.i.i227 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %transfer_list.i.i.i.i230, ptr %prev.i.i.i.i.i.i227, align 4
  %75 = ptrtoint ptr %transfer_list.i.i.i.i230 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i.i224, ptr %transfer_list.i.i.i.i230, align 4
  %prev3.i.i.i.i.i.i232 = getelementptr inbounds %struct.spi_transfer, ptr %t.i225, i32 0, i32 18, i32 1
  %76 = ptrtoint ptr %prev3.i.i.i.i.i.i232 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %msg.i.i224, ptr %prev3.i.i.i.i.i.i232, align 4
  %77 = ptrtoint ptr %msg.i.i224 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %transfer_list.i.i.i.i230, ptr %msg.i.i224, align 4
  br label %spi_write.exit235

spi_write.exit235:                                ; preds = %if.end.i.i.i.i.i.i233, %spi_write.exit223.spi_write.exit235_crit_edge
  %call.i.i234 = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i224) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i224) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i225) #6
  br label %for.body91

for.body91:                                       ; preds = %if.end100.for.body91_crit_edge, %spi_write.exit235
  %i.1274 = phi i32 [ 0, %spi_write.exit235 ], [ %inc102, %if.end100.for.body91_crit_edge ]
  %78 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 9, ptr %txbuf, align 8
  %call95 = call i32 @spi_write_then_read(ptr noundef %context, ptr noundef nonnull %txbuf, i32 noundef 8, ptr noundef nonnull %rxbuf, i32 noundef 8) #6
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %80)
  %cmp98 = icmp eq i32 %80, 65536
  br i1 %cmp98, label %do.end113, label %if.end100

if.end100:                                        ; preds = %for.body91
  call void @msleep(i32 noundef 10) #6
  %inc102 = add nuw nsw i32 %i.1274, 1
  %exitcond.not = icmp eq i32 %inc102, 500
  br i1 %exitcond.not, label %do.end108, label %if.end100.for.body91_crit_edge

if.end100.for.body91_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body91

do.end108:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %context, ptr noundef nonnull @.str.33, i32 noundef %80) #9
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %out

do.end113:                                        ; preds = %for.body91
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %context, ptr noundef nonnull @.str.36) #9
  %81 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fw, align 4
  %add116 = add i32 %82, 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i237) #6
  %83 = getelementptr inbounds i8, ptr %t.i237, i32 4
  %84 = call ptr @memset(ptr %83, i32 0, i32 92)
  %85 = ptrtoint ptr %t.i237 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call9.i.i, ptr %t.i237, align 4
  %len1.i238 = getelementptr inbounds %struct.spi_transfer, ptr %t.i237, i32 0, i32 2
  %86 = ptrtoint ptr %len1.i238 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add116, ptr %len1.i238, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i236) #6
  %87 = getelementptr inbounds i8, ptr %msg.i.i236, i32 8
  %88 = call ptr @memset(ptr %87, i32 0, i32 40)
  %89 = ptrtoint ptr %msg.i.i236 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %msg.i.i236, ptr %msg.i.i236, align 4
  %prev.i.i.i.i.i.i239 = getelementptr inbounds %struct.list_head, ptr %msg.i.i236, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i.i.i.i.i239 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %msg.i.i236, ptr %prev.i.i.i.i.i.i239, align 4
  %resources.i.i.i.i.i240 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i236, i32 0, i32 10
  %91 = ptrtoint ptr %resources.i.i.i.i.i240 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %resources.i.i.i.i.i240, ptr %resources.i.i.i.i.i240, align 4
  %prev.i2.i.i.i.i.i241 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i236, i32 0, i32 10, i32 1
  %92 = ptrtoint ptr %prev.i2.i.i.i.i.i241 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %resources.i.i.i.i.i240, ptr %prev.i2.i.i.i.i.i241, align 4
  %transfer_list.i.i.i.i242 = getelementptr inbounds %struct.spi_transfer, ptr %t.i237, i32 0, i32 18
  %call.i.i.i.i.i.i243 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i242, ptr noundef nonnull %msg.i.i236, ptr noundef nonnull %msg.i.i236) #6
  br i1 %call.i.i.i.i.i.i243, label %if.end.i.i.i.i.i.i245, label %do.end113.spi_write.exit247_crit_edge

do.end113.spi_write.exit247_crit_edge:            ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit247

if.end.i.i.i.i.i.i245:                            ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %prev.i.i.i.i.i.i239 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %transfer_list.i.i.i.i242, ptr %prev.i.i.i.i.i.i239, align 4
  %94 = ptrtoint ptr %transfer_list.i.i.i.i242 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %msg.i.i236, ptr %transfer_list.i.i.i.i242, align 4
  %prev3.i.i.i.i.i.i244 = getelementptr inbounds %struct.spi_transfer, ptr %t.i237, i32 0, i32 18, i32 1
  %95 = ptrtoint ptr %prev3.i.i.i.i.i.i244 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %msg.i.i236, ptr %prev3.i.i.i.i.i.i244, align 4
  %96 = ptrtoint ptr %msg.i.i236 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %transfer_list.i.i.i.i242, ptr %msg.i.i236, align 4
  br label %spi_write.exit247

spi_write.exit247:                                ; preds = %if.end.i.i.i.i.i.i245, %do.end113.spi_write.exit247_crit_edge
  %call.i.i246 = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i236) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i236) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i237) #6
  %97 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 79, ptr %txbuf, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i249) #6
  %98 = getelementptr inbounds i8, ptr %t.i249, i32 4
  %99 = call ptr @memset(ptr %98, i32 0, i32 92)
  %100 = ptrtoint ptr %t.i249 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %txbuf, ptr %t.i249, align 4
  %len1.i250 = getelementptr inbounds %struct.spi_transfer, ptr %t.i249, i32 0, i32 2
  %101 = ptrtoint ptr %len1.i250 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 4, ptr %len1.i250, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i248) #6
  %102 = getelementptr inbounds i8, ptr %msg.i.i248, i32 8
  %103 = call ptr @memset(ptr %102, i32 0, i32 40)
  %104 = ptrtoint ptr %msg.i.i248 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %msg.i.i248, ptr %msg.i.i248, align 4
  %prev.i.i.i.i.i.i251 = getelementptr inbounds %struct.list_head, ptr %msg.i.i248, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i.i.i.i.i251 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %msg.i.i248, ptr %prev.i.i.i.i.i.i251, align 4
  %resources.i.i.i.i.i252 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i248, i32 0, i32 10
  %106 = ptrtoint ptr %resources.i.i.i.i.i252 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %resources.i.i.i.i.i252, ptr %resources.i.i.i.i.i252, align 4
  %prev.i2.i.i.i.i.i253 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i248, i32 0, i32 10, i32 1
  %107 = ptrtoint ptr %prev.i2.i.i.i.i.i253 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %resources.i.i.i.i.i252, ptr %prev.i2.i.i.i.i.i253, align 4
  %transfer_list.i.i.i.i254 = getelementptr inbounds %struct.spi_transfer, ptr %t.i249, i32 0, i32 18
  %call.i.i.i.i.i.i255 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i254, ptr noundef nonnull %msg.i.i248, ptr noundef nonnull %msg.i.i248) #6
  br i1 %call.i.i.i.i.i.i255, label %if.end.i.i.i.i.i.i257, label %spi_write.exit247.spi_write.exit259_crit_edge

spi_write.exit247.spi_write.exit259_crit_edge:    ; preds = %spi_write.exit247
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit259

if.end.i.i.i.i.i.i257:                            ; preds = %spi_write.exit247
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %prev.i.i.i.i.i.i251 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %transfer_list.i.i.i.i254, ptr %prev.i.i.i.i.i.i251, align 4
  %109 = ptrtoint ptr %transfer_list.i.i.i.i254 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %msg.i.i248, ptr %transfer_list.i.i.i.i254, align 4
  %prev3.i.i.i.i.i.i256 = getelementptr inbounds %struct.spi_transfer, ptr %t.i249, i32 0, i32 18, i32 1
  %110 = ptrtoint ptr %prev3.i.i.i.i.i.i256 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %msg.i.i248, ptr %prev3.i.i.i.i.i.i256, align 4
  %111 = ptrtoint ptr %msg.i.i248 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %transfer_list.i.i.i.i254, ptr %msg.i.i248, align 4
  br label %spi_write.exit259

spi_write.exit259:                                ; preds = %if.end.i.i.i.i.i.i257, %spi_write.exit247.spi_write.exit259_crit_edge
  %call.i.i258 = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i248) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i248) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i249) #6
  %112 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 9, ptr %txbuf, align 8
  %call124 = call i32 @spi_write_then_read(ptr noundef %context, ptr noundef nonnull %txbuf, i32 noundef 8, ptr noundef nonnull %rxbuf, i32 noundef 8) #6
  %113 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @firmware_load.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@firmware_load, %if.then139)) #6
          to label %do.end143 [label %if.then139], !srcloc !101

if.then139:                                       ; preds = %spi_write.exit259
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @firmware_load.__UNIQUE_ID_ddebug232, ptr noundef %context, ptr noundef nonnull @.str.28, i32 noundef %114) #6
  br label %do.end143

do.end143:                                        ; preds = %if.then139, %spi_write.exit259
  %and = and i32 %114, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool144.not = icmp eq i32 %and, 0
  %.str.42..str.39 = select i1 %tobool144.not, ptr @.str.42, ptr @.str.39
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %context, ptr noundef nonnull %.str.42..str.39) #9
  call void @release_firmware(ptr noundef nonnull %fw) #6
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %out

out:                                              ; preds = %do.end143, %do.end108, %do.end71, %do.end34, %do.end5, %do.end
  call void @complete(ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rxbuf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %txbuf) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_lattice_ecp3_config__233_239_lattice_ecp3_driver_init6, !1, !"__initcall__kmod_lattice_ecp3_config__233_239_lattice_ecp3_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 239, i32 1}
!2 = !{ptr @__exitcall_lattice_ecp3_driver_exit, !1, !"__exitcall_lattice_ecp3_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author234, !4, !"__UNIQUE_ID_author234", i1 false, i1 false}
!4 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 241, i32 1}
!5 = !{ptr @__UNIQUE_ID_description235, !6, !"__UNIQUE_ID_description235", i1 false, i1 false}
!6 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 242, i32 1}
!7 = !{ptr @__UNIQUE_ID_file236, !8, !"__UNIQUE_ID_file236", i1 false, i1 false}
!8 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 243, i32 1}
!9 = !{ptr @__UNIQUE_ID_license237, !8, !"__UNIQUE_ID_license237", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware238, !11, !"__UNIQUE_ID_firmware238", i1 false, i1 false}
!11 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 244, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 232, i32 11}
!14 = !{ptr @lattice_ecp3_driver, !15, !"lattice_ecp3_driver", i1 false, i1 false}
!15 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 230, i32 26}
!16 = !{ptr @lattice_ecp3_id, !17, !"lattice_ecp3_id", i1 false, i1 false}
!17 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 223, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 195, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lattice_ecp3_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @lattice_ecp3_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 202, i32 11}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 205, i32 3}
!30 = !{ptr @lattice_ecp3_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lattice_ecp3_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 209, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lattice_ecp3_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @lattice_ecp3_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @init_completion.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/completion.h", i32 87, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 78, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @firmware_load._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @firmware_load._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 83, i32 3}
!47 = !{ptr @firmware_load._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @firmware_load._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 96, i32 2}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @firmware_load.__UNIQUE_ID_ddebug230, !50, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 103, i32 3}
!55 = !{ptr @firmware_load._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @firmware_load._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 109, i32 2}
!59 = !{ptr @firmware_load._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @firmware_load._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 114, i32 2}
!63 = !{ptr @firmware_load.__UNIQUE_ID_ddebug231, !62, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 118, i32 3}
!66 = !{ptr @firmware_load._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @firmware_load._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 154, i32 3}
!70 = !{ptr @firmware_load._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @firmware_load._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 161, i32 2}
!74 = !{ptr @firmware_load._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @firmware_load._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @firmware_load.__UNIQUE_ID_ddebug232, !77, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!77 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 170, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 174, i32 3}
!80 = !{ptr @firmware_load._entry.38, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @firmware_load._entry_ptr.40, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 176, i32 3}
!84 = !{ptr @firmware_load._entry.41, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @firmware_load._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 57, i32 11}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 61, i32 11}
!90 = !{ptr @ecp3_dev, !91, !"ecp3_dev", i1 false, i1 false}
!91 = !{!"../drivers/misc/lattice-ecp3-config.c", i32 54, i32 30}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2148281316, i64 2148281321, i64 2148281334, i64 2148281378, i64 2148281412, i64 2148281433}
