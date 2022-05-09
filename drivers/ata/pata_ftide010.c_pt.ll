; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_ftide010.c_pt.bc'
source_filename = "../drivers/ata/pata_ftide010.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.ftide010 = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, i8, i8 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.83, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.83 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }

@__initcall__kmod_pata_ftide010__292_571_pata_ftide010_driver_init6 = internal global ptr @pata_ftide010_driver_init, section ".initcall6.init", align 4
@pata_ftide010_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pata_ftide010_probe, ptr @pata_ftide010_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pata_ftide010_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pata_ftide010_driver_exit = internal global ptr @pata_ftide010_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [62 x i8] c"pata_ftide010.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [45 x i8] c"pata_ftide010.file=drivers/ata/pata_ftide010\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"pata_ftide010.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [43 x i8] c"pata_ftide010.alias=platform:pata_ftide010\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pata_ftide010\00", [18 x i8] zeroinitializer }, align 32
@pata_ftide010_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"faraday,ftide010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ftide010_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @pata_ftide010_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCLK\00", [27 x i8] zeroinitializer }, align 32
@pata_ftide010_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 485, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable PCLK\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pata_ftide010_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/ata/pata_ftide010.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pata_ftide010_probe._entry_ptr = internal global ptr @pata_ftide010_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cortina,gemini-pata\00", [44 x i8] zeroinitializer }, align 32
@pata_ftide010_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 529, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"device ID %08x, irq %d, reg %pR\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pata_ftide010_probe._entry_ptr.11 = internal global ptr @pata_ftide010_probe._entry.8, section ".printk_index", align 4
@pata_ftide010_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pata_ftide010_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr @ftide010_qc_issue, ptr null, ptr null, ptr null, ptr @ftide010_set_piomode, ptr @ftide010_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@ftide010_set_piomode.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ftide010_set_piomode\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"set PIO mode %02x, index %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pio_active_time = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0A\0A\0A\03\03", [27 x i8] zeroinitializer }, align 32
@pio_recovery_time = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0A\03\01\03\01", [27 x i8] zeroinitializer }, align 32
@ftide010_set_dmamode.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ftide010_set_dmamode\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set UDMA mode %02x, index %d\0A\00", [34 x i8] zeroinitializer }, align 32
@udma_66_setup_time = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\04\04\03\02\00\00\00", [25 x i8] zeroinitializer }, align 32
@udma_66_hold_time = internal constant { [7 x i8], [25 x i8] } zeroinitializer, align 32
@udma_50_setup_time = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\03\03\02\02\01\01", [26 x i8] zeroinitializer }, align 32
@udma_50_hold_time = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\03\01\01\01\01\01", [26 x i8] zeroinitializer }, align 32
@ftide010_set_dmamode.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.4, ptr @.str.16, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UDMA write clkreg = %02x, timreg = %02x\0A\00", [55 x i8] zeroinitializer }, align 32
@ftide010_set_dmamode.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.4, ptr @.str.17, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set MWDMA mode %02x, index %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mwdma_66_active_time = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\08\03\03", [29 x i8] zeroinitializer }, align 32
@mwdma_66_recovery_time = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\08\02\01", [29 x i8] zeroinitializer }, align 32
@ftide010_set_dmamode.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.4, ptr @.str.18, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MWDMA write clkreg = %02x, timreg = %02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"itian,sq201\00", [20 x i8] zeroinitializer }, align 32
@pata_ftide010_gemini_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 438, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set up Gemini PATA%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pata_ftide010_gemini_init\00", [38 x i8] zeroinitializer }, align 32
@pata_ftide010_gemini_init._entry_ptr = internal global ptr @pata_ftide010_gemini_init._entry, section ".printk_index", align 4
@pata_ftide010_gemini_port_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 283, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SATA0 (master) start\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pata_ftide010_gemini_port_start\00", [32 x i8] zeroinitializer }, align 32
@pata_ftide010_gemini_port_start._entry_ptr = internal global ptr @pata_ftide010_gemini_port_start._entry, section ".printk_index", align 4
@pata_ftide010_gemini_port_start._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 289, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SATA1 (master) start\0A\00", [42 x i8] zeroinitializer }, align 32
@pata_ftide010_gemini_port_start._entry_ptr.26 = internal global ptr @pata_ftide010_gemini_port_start._entry.24, section ".printk_index", align 4
@pata_ftide010_gemini_port_start._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 296, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SATA0 (slave) start\0A\00", [43 x i8] zeroinitializer }, align 32
@pata_ftide010_gemini_port_start._entry_ptr.29 = internal global ptr @pata_ftide010_gemini_port_start._entry.27, section ".printk_index", align 4
@pata_ftide010_gemini_port_start._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.4, i32 303, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SATA1 (slave) start\0A\00", [43 x i8] zeroinitializer }, align 32
@pata_ftide010_gemini_port_start._entry_ptr.32 = internal global ptr @pata_ftide010_gemini_port_start._entry.30, section ".printk_index", align 4
@pata_ftide010_gemini_port_start._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.4, i32 309, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"brought %d bridges online\0A\00", [37 x i8] zeroinitializer }, align 32
@pata_ftide010_gemini_port_start._entry_ptr.35 = internal global ptr @pata_ftide010_gemini_port_start._entry.33, section ".printk_index", align 4
@pata_ftide010_gemini_port_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 320, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SATA0 (master) stop\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pata_ftide010_gemini_port_stop\00", [33 x i8] zeroinitializer }, align 32
@pata_ftide010_gemini_port_stop._entry_ptr = internal global ptr @pata_ftide010_gemini_port_stop._entry, section ".printk_index", align 4
@pata_ftide010_gemini_port_stop._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.4, i32 324, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SATA1 (master) stop\0A\00", [43 x i8] zeroinitializer }, align 32
@pata_ftide010_gemini_port_stop._entry_ptr.40 = internal global ptr @pata_ftide010_gemini_port_stop._entry.38, section ".printk_index", align 4
@pata_ftide010_gemini_port_stop._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.4, i32 329, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SATA0 (slave) stop\0A\00", [44 x i8] zeroinitializer }, align 32
@pata_ftide010_gemini_port_stop._entry_ptr.43 = internal global ptr @pata_ftide010_gemini_port_stop._entry.41, section ".printk_index", align 4
@pata_ftide010_gemini_port_stop._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.4, i32 334, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SATA1 (slave) stop\0A\00", [44 x i8] zeroinitializer }, align 32
@pata_ftide010_gemini_port_stop._entry_ptr.46 = internal global ptr @pata_ftide010_gemini_port_stop._entry.44, section ".printk_index", align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"pata_ftide010_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 563, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 565, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"pata_ftide010_of_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 556, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"ftide010_port_info\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 260, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 481, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 485, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 491, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 528, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"pata_ftide010_sht\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 87, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant [23 x i8] c"pata_ftide010_port_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 253, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 225, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"pio_active_time\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 120, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"pio_recovery_time\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 121, i32 17 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 167, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c"udma_66_setup_time\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 128, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"udma_66_hold_time\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 129, i32 17 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"udma_50_setup_time\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 126, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"udma_50_hold_time\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 127, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 184, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 191, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [21 x i8] c"mwdma_66_active_time\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 124, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant [23 x i8] c"mwdma_66_recovery_time\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 125, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 202, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 379, i32 31 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 438, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 283, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 289, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 296, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 303, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 309, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 320, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 324, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 329, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [31 x i8] c"../drivers/ata/pata_ftide010.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 334, i32 3 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_pata_ftide010_driver_exit, ptr @__initcall__kmod_pata_ftide010__292_571_pata_ftide010_driver_init6, ptr @pata_ftide010_driver_exit, ptr @pata_ftide010_gemini_init._entry, ptr @pata_ftide010_gemini_init._entry_ptr, ptr @pata_ftide010_gemini_port_start._entry, ptr @pata_ftide010_gemini_port_start._entry.24, ptr @pata_ftide010_gemini_port_start._entry.27, ptr @pata_ftide010_gemini_port_start._entry.30, ptr @pata_ftide010_gemini_port_start._entry.33, ptr @pata_ftide010_gemini_port_start._entry_ptr, ptr @pata_ftide010_gemini_port_start._entry_ptr.26, ptr @pata_ftide010_gemini_port_start._entry_ptr.29, ptr @pata_ftide010_gemini_port_start._entry_ptr.32, ptr @pata_ftide010_gemini_port_start._entry_ptr.35, ptr @pata_ftide010_gemini_port_stop._entry, ptr @pata_ftide010_gemini_port_stop._entry.38, ptr @pata_ftide010_gemini_port_stop._entry.41, ptr @pata_ftide010_gemini_port_stop._entry.44, ptr @pata_ftide010_gemini_port_stop._entry_ptr, ptr @pata_ftide010_gemini_port_stop._entry_ptr.40, ptr @pata_ftide010_gemini_port_stop._entry_ptr.43, ptr @pata_ftide010_gemini_port_stop._entry_ptr.46, ptr @pata_ftide010_probe._entry, ptr @pata_ftide010_probe._entry.8, ptr @pata_ftide010_probe._entry_ptr, ptr @pata_ftide010_probe._entry_ptr.11, ptr @pata_ftide010_driver, ptr @.str, ptr @pata_ftide010_of_match, ptr @ftide010_port_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @pata_ftide010_sht, ptr @pata_ftide010_port_ops, ptr @.str.12, ptr @.str.13, ptr @pio_active_time, ptr @pio_recovery_time, ptr @.str.14, ptr @.str.15, ptr @udma_66_setup_time, ptr @udma_66_hold_time, ptr @udma_50_setup_time, ptr @udma_50_hold_time, ptr @.str.16, ptr @.str.17, ptr @mwdma_66_active_time, ptr @mwdma_66_recovery_time, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftide010_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pio_active_time to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pio_recovery_time to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udma_66_setup_time to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udma_66_hold_time to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udma_50_setup_time to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udma_50_hold_time to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwdma_66_active_time to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwdma_66_recovery_time to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_gemini_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_gemini_port_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_gemini_port_start._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_gemini_port_start._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_gemini_port_start._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_gemini_port_start._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_gemini_port_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_gemini_port_stop._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_gemini_port_stop._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_ftide010_gemini_port_stop._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_ftide010_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pata_ftide010_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pata_ftide010_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @pata_ftide010_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_ftide010_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pi = alloca %struct.ata_port_info, align 4
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pi) #7
  %2 = getelementptr inbounds %struct.ata_port_info, ptr %pi, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ata_port_info, ptr %pi, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %pi, ptr @ftide010_port_info, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #7
  %5 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %6 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pi, ptr %ppi, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %5, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call6) #7
  %base = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %pclk = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %pclk, align 4
  %cmp.i127 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.end16.if.end26_crit_edge, label %if.then20

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then20:                                        ; preds = %if.end16
  %call.i128 = call i32 @clk_prepare(ptr noundef %call17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then20.do.end_crit_edge

if.then20.do.end_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.then20
  %call1.i = call i32 @clk_enable(ptr noundef %call17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end26_crit_edge, label %if.then3.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call17) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then20.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i128, %if.then20.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end.i.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  %call27 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end26
  %12 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1665138688, i32 %13)
  %cmp30 = icmp eq i32 %13, 1665138688
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %call.i129 = call ptr @gemini_sata_bridge_get() #7
  %cmp.i.i = icmp ugt ptr %call.i129, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %pata_ftide010_gemini_init.exit, label %if.end.i130

if.end.i130:                                      ; preds = %if.then29
  %sg4.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %sg4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i129, ptr %sg4.i, align 4
  %call5.i = call i32 @gemini_sata_get_muxmode(ptr noundef %call.i129) #7
  store ptr @pata_ftide010_gemini_port_start, ptr getelementptr inbounds (%struct.ata_port_operations, ptr @pata_ftide010_port_ops, i32 0, i32 34), align 4
  store ptr @pata_ftide010_gemini_port_stop, ptr getelementptr inbounds (%struct.ata_port_operations, ptr @pata_ftide010_port_ops, i32 0, i32 35), align 4
  store ptr @pata_ftide010_gemini_cable_detect, ptr getelementptr inbounds (%struct.ata_port_operations, ptr @pata_ftide010_port_ops, i32 0, i32 5), align 4
  %call6.i = call zeroext i1 @gemini_sata_bridge_enabled(ptr noundef %call.i129, i1 noundef zeroext %cmp30) #7
  br i1 %call6.i, label %if.then7.i, label %if.end.i130.if.end8.i_crit_edge

if.end.i130.if.end8.i_crit_edge:                  ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pi, align 4
  %or.i = or i32 %18, 2
  store i32 %or.i, ptr %pi, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i130.if.end8.i_crit_edge
  %call9.i = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end12.i_crit_edge, label %if.then11.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %2, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %3, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end12.i_crit_edge
  br i1 %cmp30, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end12.i
  %21 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5.i, label %if.then14.i.pata_ftide010_gemini_init.exit.thread_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb15.i
    i32 2, label %sw.bb19.i
    i32 3, label %sw.bb22.i
  ]

if.then14.i.pata_ftide010_gemini_init.exit.thread_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pata_ftide010_gemini_init.exit.thread

sw.bb.i:                                          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %master_cbl.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %master_cbl.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 6, ptr %master_cbl.i, align 4
  %slave_cbl.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %slave_cbl.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %slave_cbl.i, align 4
  %master_to_sata0.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %master_to_sata0.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %master_to_sata0.i, align 4
  br label %pata_ftide010_gemini_init.exit.thread

sw.bb15.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %master_cbl16.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %master_cbl16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %master_cbl16.i, align 4
  %slave_cbl17.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %slave_cbl17.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %slave_cbl17.i, align 4
  %master_to_sata018.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %master_to_sata018.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %master_to_sata018.i, align 4
  br label %pata_ftide010_gemini_init.exit.thread

sw.bb19.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %master_cbl20.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %master_cbl20.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %master_cbl20.i, align 4
  %slave_cbl21.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %slave_cbl21.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %slave_cbl21.i, align 4
  br label %pata_ftide010_gemini_init.exit.thread

sw.bb22.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %master_cbl23.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %master_cbl23.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6, ptr %master_cbl23.i, align 4
  %slave_cbl24.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %slave_cbl24.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 6, ptr %slave_cbl24.i, align 4
  %master_to_sata025.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 7
  %32 = ptrtoint ptr %master_to_sata025.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %master_to_sata025.i, align 4
  %slave_to_sata1.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 10
  %33 = ptrtoint ptr %slave_to_sata1.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %slave_to_sata1.i, align 1
  br label %pata_ftide010_gemini_init.exit.thread

if.else.i:                                        ; preds = %if.end12.i
  %34 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call5.i, label %if.else.i.pata_ftide010_gemini_init.exit.thread_crit_edge [
    i32 0, label %sw.bb26.i
    i32 1, label %sw.bb29.i
    i32 2, label %sw.bb33.i
    i32 3, label %sw.bb37.i
  ]

if.else.i.pata_ftide010_gemini_init.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pata_ftide010_gemini_init.exit.thread

sw.bb26.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %master_cbl27.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %master_cbl27.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %master_cbl27.i, align 4
  %slave_cbl28.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %slave_cbl28.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %slave_cbl28.i, align 4
  %master_to_sata1.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 9
  %37 = ptrtoint ptr %master_to_sata1.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %master_to_sata1.i, align 2
  br label %pata_ftide010_gemini_init.exit.thread

sw.bb29.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %master_cbl30.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %master_cbl30.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 6, ptr %master_cbl30.i, align 4
  %slave_cbl31.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %slave_cbl31.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %slave_cbl31.i, align 4
  %master_to_sata132.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 9
  %40 = ptrtoint ptr %master_to_sata132.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %master_to_sata132.i, align 2
  br label %pata_ftide010_gemini_init.exit.thread

sw.bb33.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %master_cbl34.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 4
  %41 = ptrtoint ptr %master_cbl34.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 6, ptr %master_cbl34.i, align 4
  %slave_cbl35.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 5
  %42 = ptrtoint ptr %slave_cbl35.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 6, ptr %slave_cbl35.i, align 4
  %slave_to_sata0.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 8
  %43 = ptrtoint ptr %slave_to_sata0.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %slave_to_sata0.i, align 1
  %master_to_sata136.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 9
  %44 = ptrtoint ptr %master_to_sata136.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %master_to_sata136.i, align 2
  br label %pata_ftide010_gemini_init.exit.thread

sw.bb37.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %master_cbl38.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 4
  %45 = ptrtoint ptr %master_cbl38.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %master_cbl38.i, align 4
  %slave_cbl39.i = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %slave_cbl39.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %slave_cbl39.i, align 4
  br label %pata_ftide010_gemini_init.exit.thread

pata_ftide010_gemini_init.exit.thread:            ; preds = %sw.bb37.i, %sw.bb33.i, %sw.bb29.i, %sw.bb26.i, %if.else.i.pata_ftide010_gemini_init.exit.thread_crit_edge, %sw.bb22.i, %sw.bb19.i, %sw.bb15.i, %sw.bb.i, %if.then14.i.pata_ftide010_gemini_init.exit.thread_crit_edge
  %conv.i = zext i1 %cmp30 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.20, i32 noundef %conv.i) #10
  br label %if.end35

pata_ftide010_gemini_init.exit:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %call.i129 to i32
  br label %err_dis_clk

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %master_cbl = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 4
  %48 = ptrtoint ptr %master_cbl to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %master_cbl, align 4
  %slave_cbl = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 5
  %49 = ptrtoint ptr %slave_cbl to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %slave_cbl, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %pata_ftide010_gemini_init.exit.thread
  %call36 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef 1) #7
  %host = getelementptr inbounds %struct.ftide010, ptr %call.i, i32 0, i32 3
  %50 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call36, ptr %host, align 4
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.end35.err_dis_clk_crit_edge, label %if.end40

if.end35.err_dis_clk_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_dis_clk

if.end40:                                         ; preds = %if.end35
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call36, i32 0, i32 5
  %51 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %private_data, align 4
  %52 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %host, align 4
  %n_ports138 = getelementptr inbounds %struct.ata_host, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %n_ports138 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_ports138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp43139.not = icmp eq i32 %55, 0
  br i1 %cmp43139.not, label %if.end40.do.end55_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  br label %for.body

if.end40.do.end55_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end40.for.body_crit_edge
  %56 = phi ptr [ %69, %for.body.for.body_crit_edge ], [ %53, %if.end40.for.body_crit_edge ]
  %i.0140 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end40.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ata_host, ptr %56, i32 0, i32 12, i32 %i.0140
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %ioaddr45 = getelementptr inbounds %struct.ata_port, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %58, i32 0, i32 8, i32 13
  %61 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %bmdma_addr, align 4
  %62 = load ptr, ptr %base, align 4
  %add.ptr48 = getelementptr i8, ptr %62, i32 32
  %63 = ptrtoint ptr %ioaddr45 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr48, ptr %ioaddr45, align 4
  %64 = load ptr, ptr %base, align 4
  %add.ptr50 = getelementptr i8, ptr %64, i32 54
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %58, i32 0, i32 8, i32 12
  %65 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr50, ptr %ctl_addr, align 4
  %66 = load ptr, ptr %base, align 4
  %add.ptr52 = getelementptr i8, ptr %66, i32 54
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %58, i32 0, i32 8, i32 11
  %67 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr52, ptr %altstatus_addr, align 4
  call void @ata_sff_std_ports(ptr noundef %ioaddr45) #7
  %inc = add nuw i32 %i.0140, 1
  %68 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %host, align 4
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_ports, align 4
  %cmp43 = icmp ult i32 %inc, %71
  br i1 %cmp43, label %for.body.for.body_crit_edge, label %for.body.do.end55_crit_edge

for.body.do.end55_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end55:                                         ; preds = %for.body.do.end55_crit_edge, %if.end40.do.end55_crit_edge
  %72 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base, align 4
  %add.ptr57 = getelementptr i8, ptr %73, i32 8
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #7, !srcloc !134
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %75, i32 noundef %call3, ptr noundef nonnull %call6) #10
  %76 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %host, align 4
  %call61 = call i32 @ata_host_activate(ptr noundef %77, i32 noundef %call3, ptr noundef nonnull @ata_bmdma_interrupt, i32 noundef 0, ptr noundef nonnull @pata_ftide010_sht) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.end55.cleanup_crit_edge, label %do.end55.err_dis_clk_crit_edge

do.end55.err_dis_clk_crit_edge:                   ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_dis_clk

do.end55.cleanup_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_dis_clk:                                      ; preds = %do.end55.err_dis_clk_crit_edge, %if.end35.err_dis_clk_crit_edge, %pata_ftide010_gemini_init.exit
  %ret.0 = phi i32 [ %47, %pata_ftide010_gemini_init.exit ], [ %call61, %do.end55.err_dis_clk_crit_edge ], [ -12, %if.end35.err_dis_clk_crit_edge ]
  %78 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pclk, align 4
  %cmp.i132 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %err_dis_clk.cleanup_crit_edge, label %if.then67

err_dis_clk.cleanup_crit_edge:                    ; preds = %err_dis_clk
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then67:                                        ; preds = %err_dis_clk
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_disable(ptr noundef %79) #7
  call void @clk_unprepare(ptr noundef %79) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %err_dis_clk.cleanup_crit_edge, %do.end55.cleanup_crit_edge, %do.end, %if.then13, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then13 ], [ %retval.0.i.ph, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ 0, %do.end55.cleanup_crit_edge ], [ %ret.0, %if.then67 ], [ %ret.0, %err_dis_clk.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pi) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_ftide010_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %host1 = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host1, align 4
  tail call void @ata_host_detach(ptr noundef %5) #7
  %pclk = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_std_ports(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftide010_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %cmp.not = icmp eq ptr %3, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dma_mode.i = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i.not = icmp eq i8 %7, -1
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ftide010_set_dmamode(ptr noundef %1, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call i32 @ata_bmdma_qc_issue(ptr noundef %qc) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftide010_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %4 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pio_mode, align 16
  %sub = add i8 %5, -8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftide010_set_piomode.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftide010_set_piomode, %if.then)) #7
          to label %do.body7 [label %if.then], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pio_mode, align 16
  %conv5 = zext i8 %9 to i32
  %conv6 = zext i8 %sub to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftide010_set_piomode.__UNIQUE_ID_ddebug291, ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %conv5, i32 noundef %conv6) #7
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %idxprom = zext i8 %sub to i32
  %arrayidx = getelementptr [5 x i8], ptr @pio_active_time, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %shl = shl i8 %11, 4
  %arrayidx12 = getelementptr [5 x i8], ptr @pio_recovery_time, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %or = or i8 %shl, %13
  %base = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %or) #7, !srcloc !138
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftide010_set_dmamode(ptr nocapture noundef %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %4 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_mode, align 1
  %devno1 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno1, align 4
  %8 = trunc i32 %7 to i8
  %conv = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  %base = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 20
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %12 = select i1 %tobool.not, i8 -18, i8 -35
  %conv11 = and i8 %12, %11
  %conv12 = zext i8 %5 to i32
  %and13 = and i32 %conv12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else94, label %if.then15

if.then15:                                        ; preds = %entry
  %and17 = and i8 %5, -65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftide010_set_dmamode.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftide010_set_dmamode, %if.then24)) #7
          to label %do.end [label %if.then24], !srcloc !136

if.then24:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %conv26 = zext i8 %and17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftide010_set_dmamode.__UNIQUE_ID_ddebug287, ptr noundef %14, ptr noundef nonnull @.str.15, i32 noundef %conv12, i32 noundef %conv26) #7
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.then15
  %15 = select i1 %tobool.not, i8 16, i8 32
  %conv30 = or i8 %conv11, %15
  %idxprom = zext i8 %and17 to i32
  %16 = lshr i32 39, %idxprom
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool31.not.not = icmp eq i32 %17, 0
  br i1 %tobool31.not.not, label %if.then32, label %if.else45

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = trunc i32 %. to i8
  %conv36 = or i8 %conv30, %18
  %arrayidx38 = getelementptr [7 x i8], ptr @udma_66_setup_time, i32 0, i32 %idxprom
  %arrayidx41 = getelementptr [7 x i8], ptr @udma_66_hold_time, i32 0, i32 %idxprom
  br label %if.end55

if.else45:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx47 = getelementptr [6 x i8], ptr @udma_50_setup_time, i32 0, i32 %idxprom
  %arrayidx51 = getelementptr [6 x i8], ptr @udma_50_hold_time, i32 0, i32 %idxprom
  br label %if.end55

if.end55:                                         ; preds = %if.else45, %if.then32
  %arrayidx51.sink = phi ptr [ %arrayidx51, %if.else45 ], [ %arrayidx41, %if.then32 ]
  %shl49.sink.in.in = phi ptr [ %arrayidx47, %if.else45 ], [ %arrayidx38, %if.then32 ]
  %clkreg.0 = phi i8 [ %conv30, %if.else45 ], [ %conv36, %if.then32 ]
  %19 = ptrtoint ptr %shl49.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %19)
  %shl49.sink.in = load i8, ptr %shl49.sink.in.in, align 1
  %shl49.sink = shl i8 %shl49.sink.in, 4
  %20 = ptrtoint ptr %arrayidx51.sink to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx51.sink, align 1
  %or53 = or i8 %shl49.sink, %21
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %and17)
  %cmp = icmp ugt i8 %and17, 4
  %22 = or i8 %or53, -128
  %spec.select = select i1 %cmp, i8 %22, i8 %or53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftide010_set_dmamode.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftide010_set_dmamode, %if.then75)) #7
          to label %do.body82 [label %if.then75], !srcloc !136

if.then75:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %conv77 = zext i8 %clkreg.0 to i32
  %conv78 = zext i8 %spec.select to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftide010_set_dmamode.__UNIQUE_ID_ddebug288, ptr noundef %24, ptr noundef nonnull @.str.16, i32 noundef %conv77, i32 noundef %conv78) #7
  br label %do.body82

do.body82:                                        ; preds = %if.then75, %if.end55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr86 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr86, i8 %clkreg.0) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr91 = getelementptr i8, ptr %28, i32 18
  %conv92 = zext i8 %conv to i32
  %add.ptr93 = getelementptr i8, ptr %add.ptr91, i32 %conv92
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr93, i8 %spec.select) #7, !srcloc !138
  br label %if.end174

if.else94:                                        ; preds = %entry
  %and96 = and i8 %5, -33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftide010_set_dmamode.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftide010_set_dmamode, %if.then110)) #7
          to label %if.then120 [label %if.then110], !srcloc !136

if.then110:                                       ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %conv113 = zext i8 %and96 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftide010_set_dmamode.__UNIQUE_ID_ddebug289, ptr noundef %30, ptr noundef nonnull @.str.17, i32 noundef %conv12, i32 noundef %conv113) #7
  br label %if.then120

if.then120:                                       ; preds = %if.then110, %if.else94
  %idxprom117 = zext i8 %and96 to i32
  %31 = trunc i32 %. to i8
  %conv124 = or i8 %conv11, %31
  %arrayidx126 = getelementptr [3 x i8], ptr @mwdma_66_active_time, i32 0, i32 %idxprom117
  %32 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx126, align 1
  %shl128 = shl i8 %33, 4
  %arrayidx130 = getelementptr [3 x i8], ptr @mwdma_66_recovery_time, i32 0, i32 %idxprom117
  %34 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx130, align 1
  %or132 = or i8 %shl128, %35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftide010_set_dmamode.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftide010_set_dmamode, %if.then157)) #7
          to label %do.body164 [label %if.then157], !srcloc !136

if.then157:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %conv159 = zext i8 %conv124 to i32
  %conv160 = zext i8 %or132 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ftide010_set_dmamode.__UNIQUE_ID_ddebug290, ptr noundef %37, ptr noundef nonnull @.str.18, i32 noundef %conv159, i32 noundef %conv160) #7
  br label %do.body164

do.body164:                                       ; preds = %if.then157, %if.then120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr168 = getelementptr i8, ptr %39, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr168, i8 %conv124) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr173 = getelementptr i8, ptr %41, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr173, i8 %or132) #7, !srcloc !138
  br label %if.end174

if.end174:                                        ; preds = %do.body164, %do.body82
  %private_data175 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %42 = ptrtoint ptr %private_data175 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %adev, ptr %private_data175, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gemini_sata_bridge_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gemini_sata_get_muxmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_ftide010_gemini_port_start(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sg2 = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %sg2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg2, align 4
  %call = tail call i32 @ata_bmdma_port_start(ptr noundef %ap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %master_to_sata0 = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %master_to_sata0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %master_to_sata0, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %do.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.22) #10
  %call5 = tail call i32 @gemini_sata_start_bridge(ptr noundef %7, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = zext i1 %tobool6.not to i32
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end.if.end9_crit_edge
  %bridges.0 = phi i32 [ 0, %if.end.if.end9_crit_edge ], [ %spec.select, %do.end ]
  %master_to_sata1 = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %master_to_sata1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %master_to_sata1, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %if.end9.if.end20_crit_edge, label %do.end14

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.25) #10
  %call15 = tail call i32 @gemini_sata_start_bridge(ptr noundef %7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %inc18 = zext i1 %tobool16.not to i32
  %spec.select80 = add nuw nsw i32 %bridges.0, %inc18
  br label %if.end20

if.end20:                                         ; preds = %do.end14, %if.end9.if.end20_crit_edge
  %bridges.1 = phi i32 [ %bridges.0, %if.end9.if.end20_crit_edge ], [ %spec.select80, %do.end14 ]
  %slave_to_sata0 = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %slave_to_sata0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %slave_to_sata0, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool21.not = icmp eq i8 %13, 0
  br i1 %tobool21.not, label %if.end20.if.end33_crit_edge, label %land.lhs.true

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end20
  %14 = ptrtoint ptr %master_to_sata0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %master_to_sata0, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool23.not = icmp eq i8 %15, 0
  br i1 %tobool23.not, label %do.end27, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.end27:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.28) #10
  %call28 = tail call i32 @gemini_sata_start_bridge(ptr noundef %7, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  %inc31 = zext i1 %tobool29.not to i32
  %spec.select81 = add nuw nsw i32 %bridges.1, %inc31
  br label %if.end33

if.end33:                                         ; preds = %do.end27, %land.lhs.true.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  %bridges.2 = phi i32 [ %bridges.1, %land.lhs.true.if.end33_crit_edge ], [ %bridges.1, %if.end20.if.end33_crit_edge ], [ %spec.select81, %do.end27 ]
  %slave_to_sata1 = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %slave_to_sata1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %slave_to_sata1, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool34.not = icmp eq i8 %17, 0
  br i1 %tobool34.not, label %if.end33.do.end50_crit_edge, label %land.lhs.true35

if.end33.do.end50_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

land.lhs.true35:                                  ; preds = %if.end33
  %18 = ptrtoint ptr %master_to_sata1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %master_to_sata1, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool37.not = icmp eq i8 %19, 0
  br i1 %tobool37.not, label %do.end41, label %land.lhs.true35.do.end50_crit_edge

land.lhs.true35.do.end50_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

do.end41:                                         ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.31) #10
  %call42 = tail call i32 @gemini_sata_start_bridge(ptr noundef %7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  %inc45 = zext i1 %tobool43.not to i32
  %spec.select82 = add nuw nsw i32 %bridges.2, %inc45
  br label %do.end50

do.end50:                                         ; preds = %do.end41, %land.lhs.true35.do.end50_crit_edge, %if.end33.do.end50_crit_edge
  %bridges.3 = phi i32 [ %bridges.2, %land.lhs.true35.do.end50_crit_edge ], [ %bridges.2, %if.end33.do.end50_crit_edge ], [ %spec.select82, %do.end41 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.34, i32 noundef %bridges.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bridges.3)
  %cmp.not = icmp eq i32 %bridges.3, 0
  %cond = select i1 %cmp.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %do.end50 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pata_ftide010_gemini_port_stop(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sg2 = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %sg2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg2, align 4
  %master_to_sata0 = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %master_to_sata0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %master_to_sata0, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.36) #10
  tail call void @gemini_sata_stop_bridge(ptr noundef %7, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %master_to_sata1 = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %master_to_sata1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %master_to_sata1, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %do.end7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.39) #10
  tail call void @gemini_sata_stop_bridge(ptr noundef %7, i32 noundef 1) #7
  br label %if.end8

if.end8:                                          ; preds = %do.end7, %if.end.if.end8_crit_edge
  %slave_to_sata0 = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %slave_to_sata0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %slave_to_sata0, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %if.end8.if.end16_crit_edge, label %land.lhs.true

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end8
  %14 = ptrtoint ptr %master_to_sata0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %master_to_sata0, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %do.end15, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end15:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.42) #10
  tail call void @gemini_sata_stop_bridge(ptr noundef %7, i32 noundef 0) #7
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %land.lhs.true.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %slave_to_sata1 = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %slave_to_sata1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %slave_to_sata1, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool17.not = icmp eq i8 %17, 0
  br i1 %tobool17.not, label %if.end16.if.end25_crit_edge, label %land.lhs.true18

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true18:                                  ; preds = %if.end16
  %18 = ptrtoint ptr %master_to_sata1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %master_to_sata1, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not = icmp eq i8 %19, 0
  br i1 %tobool20.not, label %do.end24, label %land.lhs.true18.if.end25_crit_edge

land.lhs.true18.if.end25_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end24:                                         ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.45) #10
  tail call void @gemini_sata_stop_bridge(ptr noundef %7, i32 noundef 1) #7
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %land.lhs.true18.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pata_ftide010_gemini_cable_detect(ptr nocapture noundef readonly %ap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %master_cbl = getelementptr inbounds %struct.ftide010, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %master_cbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %master_cbl, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gemini_sata_bridge_enabled(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gemini_sata_start_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gemini_sata_stop_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !35, !37, !38, !39, !41, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_pata_ftide010__292_571_pata_ftide010_driver_init6, !1, !"__initcall__kmod_pata_ftide010__292_571_pata_ftide010_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_ftide010.c", i32 571, i32 1}
!2 = !{ptr @__exitcall_pata_ftide010_driver_exit, !1, !"__exitcall_pata_ftide010_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_ftide010.c", i32 573, i32 1}
!5 = !{ptr @__UNIQUE_ID_file294, !6, !"__UNIQUE_ID_file294", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_ftide010.c", i32 574, i32 1}
!7 = !{ptr @__UNIQUE_ID_license295, !6, !"__UNIQUE_ID_license295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias296, !9, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!9 = !{!"../drivers/ata/pata_ftide010.c", i32 575, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_ftide010.c", i32 565, i32 11}
!12 = !{ptr @pata_ftide010_driver, !13, !"pata_ftide010_driver", i1 false, i1 false}
!13 = !{!"../drivers/ata/pata_ftide010.c", i32 563, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/ata/pata_ftide010.c", i32 481, i32 34}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_ftide010.c", i32 485, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pata_ftide010_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pata_ftide010_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_ftide010.c", i32 491, i32 34}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_ftide010.c", i32 528, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pata_ftide010_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @pata_ftide010_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @ftide010_port_info, !32, !"ftide010_port_info", i1 false, i1 false}
!32 = !{!"../drivers/ata/pata_ftide010.c", i32 260, i32 29}
!33 = !{ptr @pata_ftide010_port_ops, !34, !"pata_ftide010_port_ops", i1 false, i1 false}
!34 = !{!"../drivers/ata/pata_ftide010.c", i32 253, i32 35}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/ata/pata_ftide010.c", i32 225, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ftide010_set_piomode.__UNIQUE_ID_ddebug291, !36, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!39 = !{ptr @pio_active_time, !40, !"pio_active_time", i1 false, i1 false}
!40 = !{!"../drivers/ata/pata_ftide010.c", i32 120, i32 17}
!41 = !{ptr @pio_recovery_time, !42, !"pio_recovery_time", i1 false, i1 false}
!42 = !{!"../drivers/ata/pata_ftide010.c", i32 121, i32 17}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/ata/pata_ftide010.c", i32 167, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ftide010_set_dmamode.__UNIQUE_ID_ddebug287, !44, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/ata/pata_ftide010.c", i32 184, i32 3}
!49 = !{ptr @ftide010_set_dmamode.__UNIQUE_ID_ddebug288, !48, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ata/pata_ftide010.c", i32 191, i32 3}
!52 = !{ptr @ftide010_set_dmamode.__UNIQUE_ID_ddebug289, !51, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ata/pata_ftide010.c", i32 202, i32 3}
!55 = !{ptr @ftide010_set_dmamode.__UNIQUE_ID_ddebug290, !54, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!56 = distinct !{null, !57, !"set_udma_66_mhz", i1 false, i1 false}
!57 = !{!"../drivers/ata/pata_ftide010.c", i32 139, i32 19}
!58 = !{ptr @udma_66_setup_time, !59, !"udma_66_setup_time", i1 false, i1 false}
!59 = !{!"../drivers/ata/pata_ftide010.c", i32 128, i32 17}
!60 = !{ptr @udma_66_hold_time, !61, !"udma_66_hold_time", i1 false, i1 false}
!61 = !{!"../drivers/ata/pata_ftide010.c", i32 129, i32 17}
!62 = !{ptr @udma_50_setup_time, !63, !"udma_50_setup_time", i1 false, i1 false}
!63 = !{!"../drivers/ata/pata_ftide010.c", i32 126, i32 17}
!64 = !{ptr @udma_50_hold_time, !65, !"udma_50_hold_time", i1 false, i1 false}
!65 = !{!"../drivers/ata/pata_ftide010.c", i32 127, i32 17}
!66 = distinct !{null, !67, !"set_mdma_66_mhz", i1 false, i1 false}
!67 = !{!"../drivers/ata/pata_ftide010.c", i32 134, i32 19}
!68 = !{ptr @mwdma_66_active_time, !69, !"mwdma_66_active_time", i1 false, i1 false}
!69 = !{!"../drivers/ata/pata_ftide010.c", i32 124, i32 17}
!70 = !{ptr @mwdma_66_recovery_time, !71, !"mwdma_66_recovery_time", i1 false, i1 false}
!71 = !{!"../drivers/ata/pata_ftide010.c", i32 125, i32 17}
!72 = distinct !{null, !73, !"mwdma_50_active_time", i1 false, i1 false}
!73 = !{!"../drivers/ata/pata_ftide010.c", i32 122, i32 17}
!74 = distinct !{null, !75, !"mwdma_50_recovery_time", i1 false, i1 false}
!75 = !{!"../drivers/ata/pata_ftide010.c", i32 123, i32 17}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ata/pata_ftide010.c", i32 379, i32 31}
!78 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ata/pata_ftide010.c", i32 438, i32 2}
!80 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @pata_ftide010_gemini_init._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @pata_ftide010_gemini_init._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/ata/pata_ftide010.c", i32 283, i32 3}
!85 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @pata_ftide010_gemini_port_start._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @pata_ftide010_gemini_port_start._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/ata/pata_ftide010.c", i32 289, i32 3}
!90 = !{ptr @pata_ftide010_gemini_port_start._entry.24, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @pata_ftide010_gemini_port_start._entry_ptr.26, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ata/pata_ftide010.c", i32 296, i32 3}
!94 = !{ptr @pata_ftide010_gemini_port_start._entry.27, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @pata_ftide010_gemini_port_start._entry_ptr.29, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/ata/pata_ftide010.c", i32 303, i32 3}
!98 = !{ptr @pata_ftide010_gemini_port_start._entry.30, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @pata_ftide010_gemini_port_start._entry_ptr.32, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/ata/pata_ftide010.c", i32 309, i32 2}
!102 = !{ptr @pata_ftide010_gemini_port_start._entry.33, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @pata_ftide010_gemini_port_start._entry_ptr.35, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/ata/pata_ftide010.c", i32 320, i32 3}
!106 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @pata_ftide010_gemini_port_stop._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @pata_ftide010_gemini_port_stop._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/ata/pata_ftide010.c", i32 324, i32 3}
!111 = !{ptr @pata_ftide010_gemini_port_stop._entry.38, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @pata_ftide010_gemini_port_stop._entry_ptr.40, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/ata/pata_ftide010.c", i32 329, i32 3}
!115 = !{ptr @pata_ftide010_gemini_port_stop._entry.41, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @pata_ftide010_gemini_port_stop._entry_ptr.43, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/ata/pata_ftide010.c", i32 334, i32 3}
!119 = !{ptr @pata_ftide010_gemini_port_stop._entry.44, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @pata_ftide010_gemini_port_stop._entry_ptr.46, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @pata_ftide010_sht, !122, !"pata_ftide010_sht", i1 false, i1 false}
!122 = !{!"../drivers/ata/pata_ftide010.c", i32 87, i32 34}
!123 = !{ptr @pata_ftide010_of_match, !124, !"pata_ftide010_of_match", i1 false, i1 false}
!124 = !{!"../drivers/ata/pata_ftide010.c", i32 556, i32 34}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 4963160}
!135 = !{i64 2155528131}
!136 = !{i64 2148304552, i64 2148304557, i64 2148304570, i64 2148304614, i64 2148304648, i64 2148304669}
!137 = !{i64 2155503688}
!138 = !{i64 4962545}
!139 = !{i64 4962940}
!140 = !{i64 2155490134}
!141 = !{i64 2155495270}
!142 = !{i64 2155495558}
!143 = !{i64 2155500695}
!144 = !{i64 2155500975}
!145 = !{i8 0, i8 2}
