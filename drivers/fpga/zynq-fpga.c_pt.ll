; ModuleID = '/llk/IR_all_yes/drivers/fpga/zynq-fpga.c_pt.bc'
source_filename = "../drivers/fpga/zynq-fpga.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fpga_manager_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.zynq_fpga_priv = type { i32, ptr, ptr, ptr, %struct.spinlock, i32, i32, ptr, %struct.completion }
%struct.fpga_manager = type { ptr, %struct.device, %struct.mutex, i32, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_zynq_fpga__234_658_zynq_fpga_driver_init6 = internal global ptr @zynq_fpga_driver_init, section ".initcall6.init", align 4
@zynq_fpga_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @zynq_fpga_probe, ptr @zynq_fpga_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zynq_fpga_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_zynq_fpga_driver_exit = internal global ptr @zynq_fpga_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [59 x i8] c"zynq_fpga.author=Moritz Fischer <moritz.fischer@ettus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [56 x i8] c"zynq_fpga.author=Michal Simek <michal.simek@xilinx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [47 x i8] c"zynq_fpga.description=Xilinx Zynq FPGA Manager\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [38 x i8] c"zynq_fpga.file=drivers/fpga/zynq-fpga\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [25 x i8] c"zynq_fpga.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zynq_fpga_manager\00", [46 x i8] zeroinitializer }, align 32
@zynq_fpga_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynq-devcfg-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@zynq_fpga_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->dma_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@zynq_fpga_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 574, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to get zynq-slcr regmap\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zynq_fpga_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/fpga/zynq-fpga.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zynq_fpga_probe._entry_ptr = internal global ptr @zynq_fpga_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@zynq_fpga_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 587, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"input clock not found\0A\00", [41 x i8] zeroinitializer }, align 32
@zynq_fpga_probe._entry_ptr.11 = internal global ptr @zynq_fpga_probe._entry.9, section ".printk_index", align 4
@zynq_fpga_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 593, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@zynq_fpga_probe._entry_ptr.14 = internal global ptr @zynq_fpga_probe._entry.12, section ".printk_index", align 4
@zynq_fpga_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 605, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@zynq_fpga_probe._entry_ptr.17 = internal global ptr @zynq_fpga_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Xilinx Zynq FPGA Manager\00", [39 x i8] zeroinitializer }, align 32
@zynq_fpga_ops = internal constant { %struct.fpga_manager_ops, [60 x i8] } { %struct.fpga_manager_ops { i32 128, ptr @zynq_fpga_ops_state, ptr null, ptr @zynq_fpga_ops_write_init, ptr null, ptr @zynq_fpga_ops_write, ptr @zynq_fpga_ops_write_complete, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@zynq_fpga_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 615, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to register FPGA manager\0A\00", [63 x i8] zeroinitializer }, align 32
@zynq_fpga_probe._entry_ptr.21 = internal global ptr @zynq_fpga_probe._entry.19, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@zynq_fpga_ops_write_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 270, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"System not secure, can't use encrypted bitstreams\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zynq_fpga_ops_write_init\00", [39 x i8] zeroinitializer }, align 32
@zynq_fpga_ops_write_init._entry_ptr = internal global ptr @zynq_fpga_ops_write_init._entry, section ".printk_index", align 4
@zynq_fpga_ops_write_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 280, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Invalid bitstream, could not find a sync word. Bitstream must be a byte swapped .bin file\0A\00", [37 x i8] zeroinitializer }, align 32
@zynq_fpga_ops_write_init._entry_ptr.27 = internal global ptr @zynq_fpga_ops_write_init._entry.25, section ".printk_index", align 4
@zynq_fpga_ops_write_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.5, i32 312, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout waiting for PCFG_INIT\0A\00", [33 x i8] zeroinitializer }, align 32
@zynq_fpga_ops_write_init._entry_ptr.30 = internal global ptr @zynq_fpga_ops_write_init._entry.28, section ".printk_index", align 4
@zynq_fpga_ops_write_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.5, i32 326, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timeout waiting for !PCFG_INIT\0A\00", [32 x i8] zeroinitializer }, align 32
@zynq_fpga_ops_write_init._entry_ptr.33 = internal global ptr @zynq_fpga_ops_write_init._entry.31, section ".printk_index", align 4
@zynq_fpga_ops_write_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.5, i32 340, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@zynq_fpga_ops_write_init._entry_ptr.35 = internal global ptr @zynq_fpga_ops_write_init._entry.34, section ".printk_index", align 4
@zynq_fpga_ops_write_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.24, ptr @.str.5, i32 365, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DMA command queue not right\0A\00", [35 x i8] zeroinitializer }, align 32
@zynq_fpga_ops_write_init._entry_ptr.38 = internal global ptr @zynq_fpga_ops_write_init._entry.36, section ".printk_index", align 4
@zynq_fpga_ops_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 403, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid bitstream, chunks must be aligned\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zynq_fpga_ops_write\00", [44 x i8] zeroinitializer }, align 32
@zynq_fpga_ops_write._entry_ptr = internal global ptr @zynq_fpga_ops_write._entry, section ".printk_index", align 4
@zynq_fpga_ops_write._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.5, i32 411, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to DMA map (TO_DEVICE)\0A\00", [33 x i8] zeroinitializer }, align 32
@zynq_fpga_ops_write._entry_ptr.43 = internal global ptr @zynq_fpga_ops_write._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA reported error\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA timed out\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA did not complete\00", [43 x i8] zeroinitializer }, align 32
@zynq_fpga_ops_write._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.5, i32 475, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: INT_STS:0x%x CTRL:0x%x LOCK:0x%x INT_MASK:0x%x STATUS:0x%x MCTRL:0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@zynq_fpga_ops_write._entry_ptr.49 = internal global ptr @zynq_fpga_ops_write._entry.47, section ".printk_index", align 4
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"zynq_fpga_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 649, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 653, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"zynq_fpga_of_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 641, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 564, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 572, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 574, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 584, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 587, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 593, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 605, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 612, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"zynq_fpga_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 545, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 615, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 87, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 269, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 279, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 312, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 326, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 340, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 365, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 402, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 411, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 448, i32 9 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 456, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 458, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [28 x i8] c"../drivers/fpga/zynq-fpga.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 467, i32 2 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_zynq_fpga_driver_exit, ptr @__initcall__kmod_zynq_fpga__234_658_zynq_fpga_driver_init6, ptr @zynq_fpga_driver_exit, ptr @zynq_fpga_ops_write._entry, ptr @zynq_fpga_ops_write._entry.41, ptr @zynq_fpga_ops_write._entry.47, ptr @zynq_fpga_ops_write._entry_ptr, ptr @zynq_fpga_ops_write._entry_ptr.43, ptr @zynq_fpga_ops_write._entry_ptr.49, ptr @zynq_fpga_ops_write_init._entry, ptr @zynq_fpga_ops_write_init._entry.25, ptr @zynq_fpga_ops_write_init._entry.28, ptr @zynq_fpga_ops_write_init._entry.31, ptr @zynq_fpga_ops_write_init._entry.34, ptr @zynq_fpga_ops_write_init._entry.36, ptr @zynq_fpga_ops_write_init._entry_ptr, ptr @zynq_fpga_ops_write_init._entry_ptr.27, ptr @zynq_fpga_ops_write_init._entry_ptr.30, ptr @zynq_fpga_ops_write_init._entry_ptr.33, ptr @zynq_fpga_ops_write_init._entry_ptr.35, ptr @zynq_fpga_ops_write_init._entry_ptr.38, ptr @zynq_fpga_probe._entry, ptr @zynq_fpga_probe._entry.12, ptr @zynq_fpga_probe._entry.15, ptr @zynq_fpga_probe._entry.19, ptr @zynq_fpga_probe._entry.9, ptr @zynq_fpga_probe._entry_ptr, ptr @zynq_fpga_probe._entry_ptr.11, ptr @zynq_fpga_probe._entry_ptr.14, ptr @zynq_fpga_probe._entry_ptr.17, ptr @zynq_fpga_probe._entry_ptr.21, ptr @zynq_fpga_driver, ptr @.str, ptr @zynq_fpga_of_match, ptr @zynq_fpga_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @zynq_fpga_ops, ptr @.str.20, ptr @init_completion.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_ops_write_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_ops_write_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_ops_write_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_ops_write_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_ops_write_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_ops_write_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_ops_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_ops_write._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_fpga_ops_write._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_fpga_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @zynq_fpga_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zynq_fpga_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @zynq_fpga_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_fpga_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %dma_lock = getelementptr inbounds %struct.zynq_fpga_priv, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %dma_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @zynq_fpga_probe.__key, i16 noundef signext 3) #5
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #5
  %io_base = getelementptr inbounds %struct.zynq_fpga_priv, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call4, ptr %io_base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %do.body
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call11 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.2) #5
  %slcr = getelementptr inbounds %struct.zynq_fpga_priv, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %slcr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %slcr, align 4
  %cmp.i117 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  %5 = ptrtoint ptr %slcr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slcr, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %dma_done = getelementptr inbounds %struct.zynq_fpga_priv, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %dma_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dma_done, align 4
  %wait.i = getelementptr inbounds %struct.zynq_fpga_priv, ptr %call.i, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #5
  %call21 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call21, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #5
  %clk = getelementptr inbounds %struct.zynq_fpga_priv, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call26, ptr %clk, align 4
  %cmp.i118 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then29, label %if.end40

if.then29:                                        ; preds = %if.end25
  %cmp32.not = icmp eq ptr %call26, inttoptr (i32 -517 to ptr)
  br i1 %cmp32.not, label %if.then29.if.end37_crit_edge, label %do.end36

if.then29.if.end37_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.end36:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  br label %if.end37

if.end37:                                         ; preds = %do.end36, %if.then29.if.end37_crit_edge
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end25
  %call.i119 = tail call i32 @clk_prepare(ptr noundef %call26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.do.end47_crit_edge

if.end40.do.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

if.end.i:                                         ; preds = %if.end40
  %call1.i = tail call i32 @clk_enable(ptr noundef %call26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end48, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call26) #5
  br label %do.end47

do.end47:                                         ; preds = %if.then3.i, %if.end40.do.end47_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i119, %if.end40.do.end47_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end48:                                         ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 232749941) #5, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #5, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 4
  %add.ptr.i121 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 2147022840) #5, !srcloc !109
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i122 = icmp eq ptr %23, null
  br i1 %tobool.not.i122, label %if.end.i123, label %if.end48.dev_name.exit_crit_edge

if.end48.dev_name.exit_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i123:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i123, %if.end48.dev_name.exit_crit_edge
  %retval.0.i124 = phi ptr [ %25, %if.end.i123 ], [ %23, %if.end48.dev_name.exit_crit_edge ]
  %call.i125 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %21, ptr noundef nonnull @zynq_fpga_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i124, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool52.not = icmp eq i32 %call.i125, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %27) #5
  tail call void @clk_unprepare(ptr noundef %27) #5
  br label %cleanup

if.end58:                                         ; preds = %dev_name.exit
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %29) #5
  %call60 = tail call ptr @fpga_mgr_register(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @zynq_fpga_ops, ptr noundef nonnull %call.i) #5
  %cmp.i126 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %do.end65, label %if.end68

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #8
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %31) #5
  %32 = ptrtoint ptr %call60 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call60, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end65, %do.end56, %do.end47, %if.end37, %if.end20.cleanup_crit_edge, %do.end17, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then7 ], [ %7, %do.end17 ], [ %13, %if.end37 ], [ %retval.0.i.ph, %do.end47 ], [ %call.i125, %do.end56 ], [ %32, %do.end65 ], [ 0, %if.end68 ], [ -12, %entry.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_fpga_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  tail call void @fpga_mgr_unregister(ptr noundef %1) #5
  %clk = getelementptr inbounds %struct.zynq_fpga_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_fpga_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_lock = getelementptr inbounds %struct.zynq_fpga_priv, ptr %data, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %dma_lock) #5
  %io_base.i = getelementptr inbounds %struct.zynq_fpga_priv, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %3 = and i32 %2, 1625878528
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %3)
  %.not = icmp eq i32 %3, 2097152
  br i1 %.not, label %land.lhs.true3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  %cur_sg = getelementptr inbounds %struct.zynq_fpga_priv, ptr %data, i32 0, i32 7
  %4 = ptrtoint ptr %cur_sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_sg, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 2097152) #5, !srcloc !109
  tail call fastcc void @zynq_step_dma(ptr noundef %data)
  tail call void @_raw_spin_unlock(ptr noundef %dma_lock) #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dma_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #5, !srcloc !109
  %dma_done = getelementptr inbounds %struct.zynq_fpga_priv, ptr %data, i32 0, i32 8
  tail call void @complete(ptr noundef %dma_done) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fpga_mgr_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynq_step_dma(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_elm = getelementptr inbounds %struct.zynq_fpga_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %dma_elm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_elm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %io_base.i = getelementptr inbounds %struct.zynq_fpga_priv, ptr %priv, i32 0, i32 2
  %cur_sg = getelementptr inbounds %struct.zynq_fpga_priv, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %cur_sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_sg, align 4
  %tobool.not54 = icmp eq ptr %3, null
  br i1 %tobool.not54, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dma_nelms = getelementptr inbounds %struct.zynq_fpga_priv, ptr %priv, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %.mask = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool1.not = icmp eq i32 %.mask, 0
  br i1 %tobool1.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %while.body
  %7 = ptrtoint ptr %cur_sg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_sg, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_length, align 4
  %13 = ptrtoint ptr %dma_elm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_elm, align 4
  %add = add i32 %14, 1
  %15 = ptrtoint ptr %dma_nelms to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_nelms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp5 = icmp eq i32 %add, %16
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %10, 1
  %17 = ptrtoint ptr %cur_sg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cur_sg, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call ptr @sg_next(ptr noundef %8) #5
  %18 = ptrtoint ptr %cur_sg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9, ptr %cur_sg, align 4
  %19 = ptrtoint ptr %dma_elm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_elm, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %dma_elm, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then6
  %addr.0 = phi i32 [ %or, %if.then6 ], [ %10, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %addr.0) #5
  %22 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %21) #5, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 -1) #5, !srcloc !109
  %div42 = lshr i32 %12, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %div42) #5
  %27 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %26) #5, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %30, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 0) #5, !srcloc !109
  %31 = ptrtoint ptr %cur_sg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_sg, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %33 = ptrtoint ptr %cur_sg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur_sg, align 4
  %tobool15.not = icmp eq ptr %34, null
  br i1 %cmp, label %land.lhs.true, label %if.else17

land.lhs.true:                                    ; preds = %while.end
  br i1 %tobool15.not, label %land.lhs.true.if.then20_crit_edge, label %if.then16

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1625878529) #5, !srcloc !109
  br label %if.end22

if.else17:                                        ; preds = %while.end
  br i1 %tobool15.not, label %if.else17.if.then20_crit_edge, label %if.else17.if.end22_crit_edge

if.else17.if.end22_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.else17.if.then20_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.then20:                                        ; preds = %if.else17.if.then20_crit_edge, %land.lhs.true.if.then20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 -1624829953) #5, !srcloc !109
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else17.if.end22_crit_edge, %if.then16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_fpga_ops_state(ptr nocapture noundef readonly %mgr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %clk = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %io_base.i = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #5
  %9 = and i32 %6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  %. = select i1 %tobool4.not, i32 0, i32 12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_fpga_ops_write_init(ptr noundef %mgr, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %clk = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %io_base.i = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool6.not = icmp sgt i32 %8, -1
  br i1 %tobool6.not, label %if.then3.out_err_crit_edge, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then3.out_err_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %info, align 4
  %and11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end9.if.end196_crit_edge

if.end9.if.end196_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp22.i = icmp ugt i32 %count, 3
  br i1 %cmp22.i, label %if.then13.for.body.i_crit_edge, label %if.then13.out_err_crit_edge

if.then13.out_err_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

if.then13.for.body.i_crit_edge:                   ; preds = %if.then13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then13.for.body.i_crit_edge
  %count.addr.024.i = phi i32 [ %sub.i, %for.inc.i.for.body.i_crit_edge ], [ %count, %if.then13.for.body.i_crit_edge ]
  %buf.addr.023.i = phi ptr [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %buf, %if.then13.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %buf.addr.023.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf.addr.023.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 102, i8 %12)
  %cmp1.i = icmp eq i8 %12, 102
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx3.i = getelementptr i8, ptr %buf.addr.023.i, i32 1
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %14)
  %cmp5.i = icmp eq i8 %14, 85
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %arrayidx8.i = getelementptr i8, ptr %buf.addr.023.i, i32 2
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %16)
  %cmp10.i = icmp eq i8 %16, -103
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true7.i.for.inc.i_crit_edge

land.lhs.true7.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true12.i:                                ; preds = %land.lhs.true7.i
  %arrayidx13.i = getelementptr i8, ptr %buf.addr.023.i, i32 3
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %18)
  %cmp15.i = icmp eq i8 %18, -86
  br i1 %cmp15.i, label %if.end20, label %land.lhs.true12.i.for.inc.i_crit_edge

land.lhs.true12.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true12.i.for.inc.i_crit_edge, %land.lhs.true7.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %buf.addr.023.i, i32 4
  %sub.i = add i32 %count.addr.024.i, -4
  %cmp.i = icmp ugt i32 %sub.i, 3
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.out_err_crit_edge

for.inc.i.out_err_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end20:                                         ; preds = %land.lhs.true12.i
  %slcr = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %slcr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slcr, align 4
  %call21 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 576, i32 noundef 15) #5
  %21 = ptrtoint ptr %slcr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slcr, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 2304, i32 noundef 0) #5
  %23 = ptrtoint ptr %slcr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slcr, align 4
  %call25 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 2304, i32 noundef 10) #5
  %io_base.i288 = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base.i288, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %28 = or i32 %27, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i288, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #5, !srcloc !109
  %call27 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call27, 2500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 310) #5
  %31 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base.i288, align 4
  %add.ptr320 = getelementptr i8, ptr %32, i32 20
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr320) #5, !srcloc !110
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  %and42321 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42321)
  %tobool43.not322 = icmp eq i32 %and42321, 0
  br i1 %tobool43.not322, label %if.end20.land.lhs.true_crit_edge, label %if.end20.for.end_crit_edge

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end20.land.lhs.true_crit_edge:                 ; preds = %if.end20
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then60.land.lhs.true_crit_edge, %if.end20.land.lhs.true_crit_edge
  %call47 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call47, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call47, %add.i
  br i1 %cmp3.i, label %if.then50, label %if.then60

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i288, align 4
  %add.ptr54 = getelementptr i8, ptr %36, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #5, !srcloc !110
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  br label %for.end

if.then60:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #5
  %39 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_base.i288, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 20
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !110
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  %and42 = and i32 %42, 16
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then60.land.lhs.true_crit_edge, label %if.then60.for.end_crit_edge

if.then60.for.end_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then60.land.lhs.true_crit_edge:                ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end:                                          ; preds = %if.then60.for.end_crit_edge, %if.then50, %if.end20.for.end_crit_edge
  %status.0 = phi i32 [ %38, %if.then50 ], [ %34, %if.end20.for.end_crit_edge ], [ %42, %if.then60.for.end_crit_edge ]
  %and63 = and i32 %status.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %for.end.out_err_crit_edge, label %if.end71

for.end.out_err_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

if.end71:                                         ; preds = %for.end
  %43 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_base.i288, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %46 = and i32 %45, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_base.i288, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #5, !srcloc !109
  %call77 = tail call i64 @ktime_get() #5
  %add.i293 = add i64 %call77, 2500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 324) #5
  %49 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base.i288, align 4
  %add.ptr95323 = getelementptr i8, ptr %50, i32 20
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95323) #5, !srcloc !110
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  %and99324 = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99324)
  %tobool100.not325 = icmp eq i32 %and99324, 0
  br i1 %tobool100.not325, label %if.end71.for.end122_crit_edge, label %if.end71.land.lhs.true104_crit_edge

if.end71.land.lhs.true104_crit_edge:              ; preds = %if.end71
  br label %land.lhs.true104

if.end71.for.end122_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end122

land.lhs.true104:                                 ; preds = %if.then118.land.lhs.true104_crit_edge, %if.end71.land.lhs.true104_crit_edge
  %call105 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call105, i64 %add.i293)
  %cmp3.i295 = icmp sgt i64 %call105, %add.i293
  br i1 %cmp3.i295, label %if.then108, label %if.then118

if.then108:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_base.i288, align 4
  %add.ptr112 = getelementptr i8, ptr %54, i32 20
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #5, !srcloc !110
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  br label %for.end122

if.then118:                                       ; preds = %land.lhs.true104
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #5
  %57 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_base.i288, align 4
  %add.ptr95 = getelementptr i8, ptr %58, i32 20
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #5, !srcloc !110
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  %and99 = and i32 %60, 16
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.then118.for.end122_crit_edge, label %if.then118.land.lhs.true104_crit_edge

if.then118.land.lhs.true104_crit_edge:            ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true104

if.then118.for.end122_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end122

for.end122:                                       ; preds = %if.then118.for.end122_crit_edge, %if.then108, %if.end71.for.end122_crit_edge
  %status.1 = phi i32 [ %56, %if.then108 ], [ %52, %if.end71.for.end122_crit_edge ], [ %60, %if.then118.for.end122_crit_edge ]
  %and124 = and i32 %status.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end133, label %for.end122.out_err_crit_edge

for.end122.out_err_crit_edge:                     ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

if.end133:                                        ; preds = %for.end122
  %61 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_base.i288, align 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %64 = or i32 %63, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %65 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io_base.i288, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #5, !srcloc !109
  %call139 = tail call i64 @ktime_get() #5
  %add.i300 = add i64 %call139, 2500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 338) #5
  %67 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io_base.i288, align 4
  %add.ptr157327 = getelementptr i8, ptr %68, i32 20
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157327) #5, !srcloc !110
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  %and161328 = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161328)
  %tobool162.not329 = icmp eq i32 %and161328, 0
  br i1 %tobool162.not329, label %if.end133.land.lhs.true166_crit_edge, label %if.end133.for.end184_crit_edge

if.end133.for.end184_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end184

if.end133.land.lhs.true166_crit_edge:             ; preds = %if.end133
  br label %land.lhs.true166

land.lhs.true166:                                 ; preds = %if.then180.land.lhs.true166_crit_edge, %if.end133.land.lhs.true166_crit_edge
  %call167 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call167, i64 %add.i300)
  %cmp3.i302 = icmp sgt i64 %call167, %add.i300
  br i1 %cmp3.i302, label %if.then170, label %if.then180

if.then170:                                       ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io_base.i288, align 4
  %add.ptr174 = getelementptr i8, ptr %72, i32 20
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr174) #5, !srcloc !110
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  br label %for.end184

if.then180:                                       ; preds = %land.lhs.true166
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #5
  %75 = ptrtoint ptr %io_base.i288 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_base.i288, align 4
  %add.ptr157 = getelementptr i8, ptr %76, i32 20
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #5, !srcloc !110
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  %and161 = and i32 %78, 16
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.then180.land.lhs.true166_crit_edge, label %if.then180.for.end184_crit_edge

if.then180.for.end184_crit_edge:                  ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end184

if.then180.land.lhs.true166_crit_edge:            ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true166

for.end184:                                       ; preds = %if.then180.for.end184_crit_edge, %if.then170, %if.end133.for.end184_crit_edge
  %status.2 = phi i32 [ %74, %if.then170 ], [ %70, %if.end133.for.end184_crit_edge ], [ %78, %if.then180.for.end184_crit_edge ]
  %and186 = and i32 %status.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %for.end184.out_err_crit_edge, label %for.end184.if.end196_crit_edge

for.end184.if.end196_crit_edge:                   ; preds = %for.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196

for.end184.out_err_crit_edge:                     ; preds = %for.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

if.end196:                                        ; preds = %for.end184.if.end196_crit_edge, %if.end9.if.end196_crit_edge
  %io_base.i305 = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 2
  %79 = ptrtoint ptr %io_base.i305 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %io_base.i305, align 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #5, !srcloc !110
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %83 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %info, align 4
  %and199 = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.else, label %if.then201

if.then201:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #7
  %or202 = or i32 %82, 234881024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %85 = tail call i32 @llvm.bswap.i32(i32 %or202) #5
  %86 = ptrtoint ptr %io_base.i305 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_base.i305, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #5, !srcloc !109
  br label %if.end204

if.else:                                          ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #7
  %or203 = or i32 %82, 201326592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %88 = tail call i32 @llvm.bswap.i32(i32 %or203) #5
  %89 = ptrtoint ptr %io_base.i305 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %io_base.i305, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #5, !srcloc !109
  br label %if.end204

if.end204:                                        ; preds = %if.else, %if.then201
  %91 = ptrtoint ptr %io_base.i305 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %io_base.i305, align 4
  %add.ptr.i309 = getelementptr i8, ptr %92, i32 20
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i309) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %94 = and i32 %93, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %94)
  %.not = icmp eq i32 %94, 64
  br i1 %.not, label %if.end215, label %if.end204.out_err_crit_edge

if.end204.out_err_crit_edge:                      ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_err

if.end215:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %io_base.i305 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %io_base.i305, align 4
  %add.ptr.i311 = getelementptr i8, ptr %96, i32 128
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i311) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %98 = and i32 %97, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %io_base.i305 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %io_base.i305, align 4
  %add.ptr.i313 = getelementptr i8, ptr %100, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i313, i32 %98) #5, !srcloc !109
  br label %cleanup.sink.split

out_err:                                          ; preds = %if.end204.out_err_crit_edge, %for.end184.out_err_crit_edge, %for.end122.out_err_crit_edge, %for.end.out_err_crit_edge, %for.inc.i.out_err_crit_edge, %if.then13.out_err_crit_edge, %if.then3.out_err_crit_edge
  %.str.37.sink = phi ptr [ @.str.23, %if.then3.out_err_crit_edge ], [ @.str.26, %if.then13.out_err_crit_edge ], [ @.str.29, %for.end.out_err_crit_edge ], [ @.str.32, %for.end122.out_err_crit_edge ], [ @.str.29, %for.end184.out_err_crit_edge ], [ @.str.37, %if.end204.out_err_crit_edge ], [ @.str.26, %for.inc.i.out_err_crit_edge ]
  %err.0 = phi i32 [ -22, %if.then3.out_err_crit_edge ], [ -22, %if.then13.out_err_crit_edge ], [ -110, %for.end.out_err_crit_edge ], [ -110, %for.end122.out_err_crit_edge ], [ -110, %for.end184.out_err_crit_edge ], [ -16, %if.end204.out_err_crit_edge ], [ -22, %for.inc.i.out_err_crit_edge ]
  %dev214 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev214, ptr noundef nonnull %.str.37.sink) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_err, %if.end215
  %retval.0.ph = phi i32 [ 0, %if.end215 ], [ %err.0, %out_err ]
  %101 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %102) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_fpga_ops_write(ptr noundef %mgr, ptr nocapture noundef readonly %sgt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 1
  %2 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp143.not = icmp eq i32 %3, 0
  br i1 %cmp143.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgt, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0145 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.0144 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.0144, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %rem = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %for.body
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0144, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %rem2 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %tobool3.not = icmp eq i32 %rem2, 0
  br i1 %tobool3.not, label %for.inc, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %for.body.do.end_crit_edge
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #8
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %inc = add nuw i32 %i.0145, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.0144) #5
  %10 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %11, %for.inc.for.end_crit_edge ]
  %dev4 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  %parent = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %14 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sgt, align 4
  %call7 = tail call i32 @dma_map_sg_attrs(ptr noundef %13, ptr noundef %15, i32 noundef %.lcssa, i32 noundef 1, i32 noundef 0) #5
  %dma_nelms = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %dma_nelms to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call7, ptr %dma_nelms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp9 = icmp eq i32 %call7, 0
  br i1 %cmp9, label %do.end13, label %if.end15

do.end13:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.42) #8
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %clk = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  %call16 = tail call i32 @clk_enable(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_free_crit_edge

if.end15.out_free_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

if.end19:                                         ; preds = %if.end15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %io_base.i = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2147022840) #5, !srcloc !109
  %dma_done = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %dma_done to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dma_done, align 4
  %dma_lock = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 4
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_lock) #5
  %dma_elm = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %dma_elm to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dma_elm, align 4
  %23 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sgt, align 4
  %cur_sg = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %cur_sg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %cur_sg, align 4
  tail call fastcc void @zynq_step_dma(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_lock, i32 noundef %call24) #5
  %call33 = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_done, i32 noundef 500) #5
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #5, !srcloc !109
  %28 = ptrtoint ptr %cur_sg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %cur_sg, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_lock, i32 noundef %call43) #5
  %29 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %30, i32 12
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #5, !srcloc !110
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 2147022840) #5, !srcloc !109
  %and = and i32 %32, 15779936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.end53, label %if.end19.do.end68_crit_edge

if.end19.do.end68_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

if.end53:                                         ; preds = %if.end19
  %35 = ptrtoint ptr %cur_sg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur_sg, align 4
  %tobool55.not = icmp ne ptr %36, null
  %and57 = and i32 %32, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %cmp58.not = icmp eq i32 %and57, 0
  %or.cond = select i1 %tobool55.not, i1 true, i1 %cmp58.not
  br i1 %or.cond, label %if.then60, label %if.end53.out_clk_crit_edge

if.end53.out_clk_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk

if.then60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp61 = icmp eq i32 %call33, 0
  %.str.45..str.46 = select i1 %cmp61, ptr @.str.45, ptr @.str.46
  br label %do.end68

do.end68:                                         ; preds = %if.then60, %if.end19.do.end68_crit_edge
  %why.1 = phi ptr [ %.str.45..str.46, %if.then60 ], [ @.str.44, %if.end19.do.end68_crit_edge ]
  %37 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base.i, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !110
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %41 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %42, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #5, !srcloc !110
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %45 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %46, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #5, !srcloc !110
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %49 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %50, i32 20
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #5, !srcloc !110
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %53 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %54, i32 128
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #5, !srcloc !110
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.48, ptr noundef nonnull %why.1, i32 noundef %32, i32 noundef %40, i32 noundef %44, i32 noundef %48, i32 noundef %52, i32 noundef %56) #8
  br label %out_clk

out_clk:                                          ; preds = %do.end68, %if.end53.out_clk_crit_edge
  %err.1 = phi i32 [ -5, %do.end68 ], [ 0, %if.end53.out_clk_crit_edge ]
  %57 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %58) #5
  br label %out_free

out_free:                                         ; preds = %out_clk, %if.end15.out_free_crit_edge
  %err.2 = phi i32 [ %call16, %if.end15.out_free_crit_edge ], [ %err.1, %out_clk ]
  %59 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent, align 8
  %61 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sgt, align 4
  %63 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %60, ptr noundef %62, i32 noundef %64, i32 noundef 1, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end13 ], [ %err.2, %out_free ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_fpga_ops_write_complete(ptr nocapture noundef readonly %mgr, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %clk = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_base.i = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %7 = and i32 %6, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !109
  %call3 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call3, 2500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 503) #5
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i, align 4
  %add.ptr68 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  %13 = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not70 = icmp eq i32 %13, 0
  br i1 %tobool16.not70, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end.thread_crit_edge

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then33.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call20 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then33

if.then33:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #5
  %14 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  %17 = and i32 %16, 67108864
  %tobool16.not = icmp eq i32 %17, 0
  br i1 %tobool16.not, label %if.then33.land.lhs.true_crit_edge, label %if.then33.for.end.thread_crit_edge

if.then33.for.end.thread_crit_edge:               ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread

if.then33.land.lhs.true_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end.thread:                                   ; preds = %if.then33.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #5
  br label %if.end41

for.end:                                          ; preds = %land.lhs.true
  %20 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i, align 4
  %add.ptr27 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  %23 = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool37.not = icmp eq i32 %23, 0
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %25) #5
  br i1 %tobool37.not, label %for.end.cleanup_crit_edge, label %for.end.if.end41_crit_edge

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %for.end.if.end41_crit_edge, %for.end.thread
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %info, align 4
  %and42 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %slcr = getelementptr inbounds %struct.zynq_fpga_priv, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %slcr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %slcr, align 4
  %call45 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 2304, i32 noundef 15) #5
  %30 = ptrtoint ptr %slcr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slcr, align 4
  %call47 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 576, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end41.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -110, %for.end.cleanup_crit_edge ], [ 0, %if.then44 ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpga_mgr_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !96, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__initcall__kmod_zynq_fpga__234_658_zynq_fpga_driver_init6, !1, !"__initcall__kmod_zynq_fpga__234_658_zynq_fpga_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/fpga/zynq-fpga.c", i32 658, i32 1}
!2 = !{ptr @__exitcall_zynq_fpga_driver_exit, !1, !"__exitcall_zynq_fpga_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/fpga/zynq-fpga.c", i32 660, i32 1}
!5 = !{ptr @__UNIQUE_ID_author236, !6, !"__UNIQUE_ID_author236", i1 false, i1 false}
!6 = !{!"../drivers/fpga/zynq-fpga.c", i32 661, i32 1}
!7 = !{ptr @__UNIQUE_ID_description237, !8, !"__UNIQUE_ID_description237", i1 false, i1 false}
!8 = !{!"../drivers/fpga/zynq-fpga.c", i32 662, i32 1}
!9 = !{ptr @__UNIQUE_ID_file238, !10, !"__UNIQUE_ID_file238", i1 false, i1 false}
!10 = !{!"../drivers/fpga/zynq-fpga.c", i32 663, i32 1}
!11 = !{ptr @__UNIQUE_ID_license239, !10, !"__UNIQUE_ID_license239", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/fpga/zynq-fpga.c", i32 653, i32 11}
!14 = !{ptr @zynq_fpga_driver, !15, !"zynq_fpga_driver", i1 false, i1 false}
!15 = !{!"../drivers/fpga/zynq-fpga.c", i32 649, i32 31}
!16 = !{ptr @zynq_fpga_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/fpga/zynq-fpga.c", i32 564, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/fpga/zynq-fpga.c", i32 572, i32 3}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/fpga/zynq-fpga.c", i32 574, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @zynq_fpga_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @zynq_fpga_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/fpga/zynq-fpga.c", i32 584, i32 32}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/fpga/zynq-fpga.c", i32 587, i32 4}
!33 = !{ptr @zynq_fpga_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @zynq_fpga_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/fpga/zynq-fpga.c", i32 593, i32 3}
!37 = !{ptr @zynq_fpga_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @zynq_fpga_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/fpga/zynq-fpga.c", i32 605, i32 3}
!41 = !{ptr @zynq_fpga_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @zynq_fpga_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/fpga/zynq-fpga.c", i32 612, i32 31}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/fpga/zynq-fpga.c", i32 615, i32 3}
!47 = !{ptr @zynq_fpga_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @zynq_fpga_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @init_completion.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/linux/completion.h", i32 87, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @zynq_fpga_ops, !53, !"zynq_fpga_ops", i1 false, i1 false}
!53 = !{!"../drivers/fpga/zynq-fpga.c", i32 545, i32 38}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/fpga/zynq-fpga.c", i32 269, i32 4}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @zynq_fpga_ops_write_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @zynq_fpga_ops_write_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/fpga/zynq-fpga.c", i32 279, i32 4}
!61 = !{ptr @zynq_fpga_ops_write_init._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @zynq_fpga_ops_write_init._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/fpga/zynq-fpga.c", i32 312, i32 4}
!65 = !{ptr @zynq_fpga_ops_write_init._entry.28, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @zynq_fpga_ops_write_init._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/fpga/zynq-fpga.c", i32 326, i32 4}
!69 = !{ptr @zynq_fpga_ops_write_init._entry.31, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @zynq_fpga_ops_write_init._entry_ptr.33, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @zynq_fpga_ops_write_init._entry.34, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/fpga/zynq-fpga.c", i32 340, i32 4}
!73 = !{ptr @zynq_fpga_ops_write_init._entry_ptr.35, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/fpga/zynq-fpga.c", i32 365, i32 3}
!76 = !{ptr @zynq_fpga_ops_write_init._entry.36, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @zynq_fpga_ops_write_init._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/fpga/zynq-fpga.c", i32 402, i32 4}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @zynq_fpga_ops_write._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @zynq_fpga_ops_write._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/fpga/zynq-fpga.c", i32 411, i32 3}
!85 = !{ptr @zynq_fpga_ops_write._entry.41, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @zynq_fpga_ops_write._entry_ptr.43, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/fpga/zynq-fpga.c", i32 448, i32 9}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/fpga/zynq-fpga.c", i32 456, i32 10}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/fpga/zynq-fpga.c", i32 458, i32 10}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/fpga/zynq-fpga.c", i32 467, i32 2}
!95 = !{ptr @zynq_fpga_ops_write._entry.47, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @zynq_fpga_ops_write._entry_ptr.49, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @zynq_fpga_of_match, !98, !"zynq_fpga_of_match", i1 false, i1 false}
!98 = !{!"../drivers/fpga/zynq-fpga.c", i32 641, i32 34}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i64 2154369947}
!109 = !{i64 6271604}
!110 = !{i64 6272022}
!111 = !{i64 2154370802}
!112 = !{i64 2154378581}
!113 = !{i64 2154379083}
!114 = !{i64 2154382802}
!115 = !{i64 2154383304}
!116 = !{i64 2154387012}
!117 = !{i64 2154387514}
!118 = !{i64 2154400911}
!119 = !{i64 2154401413}
