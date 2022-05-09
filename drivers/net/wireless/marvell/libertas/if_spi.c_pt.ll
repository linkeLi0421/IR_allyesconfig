; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas/if_spi.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas/if_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lbs_fw_table = type { i32, ptr, ptr }
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
%struct.libertas_spi_platform_data = type { i16, ptr, ptr }
%struct.if_spi_card = type { ptr, ptr, ptr, i16, i8, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.work_struct, [2400 x i8], %struct.list_head, %struct.list_head, %struct.spinlock, i8 }
%struct.lbs_private = type { ptr, i32, %struct.work_struct, i32, [32 x [6 x i8]], ptr, i8, ptr, [6 x i8], [3 x i8], i8, ptr, %struct.lbs_mesh_stats, i16, i8, ptr, ptr, [6 x ptr], ptr, [6 x ptr], ptr, [6 x ptr], i32, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.timer_list, i32, i32, %struct.wait_queue_head, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, [6 x i8], i8, i8, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.timer_list, i32, i8, [2 x [2312 x i8]], [2 x i32], %struct.kfifo, ptr, %struct.wait_queue_head, ptr, i8, i8, [4 x [13 x i8]], [4 x i8], i32, i8, i8, i8, i32, [2312 x i8], i8, ptr, %struct.timer_list, %struct.mutex, %struct.spinlock, i16, i8, i8, i8, i16, i16, i16, %struct.delayed_work, i32, %struct.wait_queue_head, i8, i32, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr }
%struct.lbs_mesh_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kfifo = type { %union.anon.118, [0 x i8] }
%union.anon.118 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.if_spi_packet = type { %struct.list_head, i16, [2 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__UNIQUE_ID_firmware341 = internal constant [51 x i8] c"libertas_spi.firmware=libertas/gspi8385_helper.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware342 = internal constant [48 x i8] c"libertas_spi.firmware=libertas/gspi8385_hlp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware343 = internal constant [44 x i8] c"libertas_spi.firmware=libertas/gspi8385.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [54 x i8] c"libertas_spi.firmware=libertas/gspi8686_v9_helper.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [47 x i8] c"libertas_spi.firmware=libertas/gspi8686_v9.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [48 x i8] c"libertas_spi.firmware=libertas/gspi8686_hlp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [44 x i8] c"libertas_spi.firmware=libertas/gspi8686.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [51 x i8] c"libertas_spi.firmware=libertas/gspi8688_helper.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [44 x i8] c"libertas_spi.firmware=libertas/gspi8688.bin\00", section ".modinfo", align 1
@libertas_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @if_spi_probe, ptr @libertas_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @if_spi_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_libertas_spi__355_1281_if_spi_init_module6 = internal global ptr @if_spi_init_module, section ".initcall6.init", align 4
@__exitcall_if_spi_exit_module = internal global ptr @if_spi_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_description356 = internal constant [50 x i8] c"libertas_spi.description=Libertas SPI WLAN Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [91 x i8] c"libertas_spi.author=Andrey Yurovsky <andrey@cozybit.com>, Colin McCabe <colin@cozybit.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file358 = internal constant [69 x i8] c"libertas_spi.file=drivers/net/wireless/marvell/libertas/libertas_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [25 x i8] c"libertas_spi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias360 = internal constant [36 x i8] c"libertas_spi.alias=spi:libertas_spi\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"libertas_spi\00", [19 x i8] zeroinitializer }, align 32
@if_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @if_spi_suspend, ptr @if_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@if_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&card->buffer_lock\00", [45 x i8] zeroinitializer }, align 32
@if_spi_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&card->packet_work)\00", [58 x i8] zeroinitializer }, align 32
@if_spi_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&card->resume_work)\00", [58 x i8] zeroinitializer }, align 32
@if_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013libertas_spi: can't get host irq line-- request_irq failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"if_spi_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/marvell/libertas/if_spi.c\00", [49 x i8] zeroinitializer }, align 32
@if_spi_probe._entry_ptr = internal global ptr @if_spi_probe._entry, section ".printk_index", align 4
@lbs_debug = external dso_local local_unnamed_addr global i32, align 4
@if_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017libertas spi: Finished initializing WLAN module.\0A\00", [44 x i8] zeroinitializer }, align 32
@if_spi_probe._entry_ptr.11 = internal global ptr @if_spi_probe._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@if_spi_init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.8, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017libertas spi: Firmware is already loaded for Marvell WLAN 802.11 adapter\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"if_spi_init_card\00", [47 x i8] zeroinitializer }, align 32
@if_spi_init_card._entry_ptr = internal global ptr @if_spi_init_card._entry, section ".printk_index", align 4
@fw_table = internal constant { [6 x %struct.lbs_fw_table], [56 x i8] } { [6 x %struct.lbs_fw_table] [%struct.lbs_fw_table { i32 4, ptr @.str.26, ptr @.str.27 }, %struct.lbs_fw_table { i32 4, ptr @.str.28, ptr @.str.27 }, %struct.lbs_fw_table { i32 11, ptr @.str.29, ptr @.str.30 }, %struct.lbs_fw_table { i32 11, ptr @.str.31, ptr @.str.32 }, %struct.lbs_fw_table { i32 16, ptr @.str.33, ptr @.str.34 }, %struct.lbs_fw_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported chip_id: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to find firmware (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@if_spi_init_card._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.8, i32 1055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [168 x i8], [56 x i8] } { [168 x i8] c"\017libertas spi: Initializing FW for Marvell WLAN 802.11 adapter (chip_id = 0x%04x, chip_rev = 0x%02x) attached to SPI bus_num %d, chip_select %d. spi->max_speed_hz=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@if_spi_init_card._entry_ptr.18 = internal global ptr @if_spi_init_card._entry.16, section ".printk_index", align 4
@if_spi_init_card._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.8, i32 1062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017libertas spi: loaded FW for Marvell WLAN 802.11 adapter\0A\00", [37 x i8] zeroinitializer }, align 32
@if_spi_init_card._entry_ptr.21 = internal global ptr @if_spi_init_card._entry.19, section ".printk_index", align 4
@spu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.8, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\017libertas spi: Initialized SPU unit. spu_port_delay=0x%04lx, spu_reg_delay=0x%04lx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spu_init\00", [23 x i8] zeroinitializer }, align 32
@spu_init._entry_ptr = internal global ptr @spu_init._entry, section ".printk_index", align 4
@spu_set_bus_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.8, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013libertas_spi: Can't read bus mode register\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spu_set_bus_mode\00", [47 x i8] zeroinitializer }, align 32
@spu_set_bus_mode._entry_ptr = internal global ptr @spu_set_bus_mode._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"libertas/gspi8385_helper.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"libertas/gspi8385.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"libertas/gspi8385_hlp.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"libertas/gspi8686_v9_helper.bin\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"libertas/gspi8686_v9.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"libertas/gspi8686_hlp.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"libertas/gspi8686.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"libertas/gspi8688_helper.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"libertas/gspi8688.bin\00", [42 x i8] zeroinitializer }, align 32
@if_spi_prog_helper_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.8, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013libertas_spi: failed to load helper firmware (err=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"if_spi_prog_helper_firmware\00", [36 x i8] zeroinitializer }, align 32
@if_spi_prog_helper_firmware._entry_ptr = internal global ptr @if_spi_prog_helper_firmware._entry, section ".printk_index", align 4
@spu_wait_for_u16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.8, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013libertas_spi: %s: timeout with val=%02x, target_mask=%02x, target=%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spu_wait_for_u16\00", [47 x i8] zeroinitializer }, align 32
@spu_wait_for_u16._entry_ptr = internal global ptr @spu_wait_for_u16._entry, section ".printk_index", align 4
@.str.39 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: timed out waiting for initial scratch reg = 0\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.if_spi_prog_main_firmware = private unnamed_addr constant [26 x i8] c"if_spi_prog_main_firmware\00", align 1
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Firmware load wants more bytes than we have to offer.\0A\00", [41 x i8] zeroinitializer }, align 32
@if_spi_prog_main_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @__func__.if_spi_prog_main_firmware, ptr @.str.8, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013libertas_spi: Too many CRC errors encountered in firmware load.\0A\00", [61 x i8] zeroinitializer }, align 32
@if_spi_prog_main_firmware._entry_ptr = internal global ptr @if_spi_prog_main_firmware._entry, section ".printk_index", align 4
@if_spi_prog_main_firmware._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.if_spi_prog_main_firmware, ptr @.str.8, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013libertas_spi: firmware load wants fewer bytes than we have to offer\0A\00", [57 x i8] zeroinitializer }, align 32
@if_spi_prog_main_firmware._entry_ptr.44 = internal global ptr @if_spi_prog_main_firmware._entry.42, section ".printk_index", align 4
@if_spi_prog_main_firmware._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @__func__.if_spi_prog_main_firmware, ptr @.str.8, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013libertas_spi: failed to confirm the firmware download\0A\00", [39 x i8] zeroinitializer }, align 32
@if_spi_prog_main_firmware._entry_ptr.47 = internal global ptr @if_spi_prog_main_firmware._entry.45, section ".printk_index", align 4
@if_spi_prog_main_firmware._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.if_spi_prog_main_firmware, ptr @.str.8, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013libertas_spi: failed to load firmware (err=%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@if_spi_prog_main_firmware._entry_ptr.50 = internal global ptr @if_spi_prog_main_firmware._entry.48, section ".printk_index", align 4
@if_spi_prog_main_firmware_check_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.8, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013libertas_spi: timed out waiting for host_int_status\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"if_spi_prog_main_firmware_check_len\00", [60 x i8] zeroinitializer }, align 32
@if_spi_prog_main_firmware_check_len._entry_ptr = internal global ptr @if_spi_prog_main_firmware_check_len._entry, section ".printk_index", align 4
@if_spi_prog_main_firmware_check_len._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.8, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\013libertas_spi: firmware load device requested a larger transfer than we are prepared to handle (len = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@if_spi_prog_main_firmware_check_len._entry_ptr.55 = internal global ptr @if_spi_prog_main_firmware_check_len._entry.53, section ".printk_index", align 4
@if_spi_prog_main_firmware_check_len._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.8, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017libertas spi: %s: crc error\0A\00", [33 x i8] zeroinitializer }, align 32
@if_spi_prog_main_firmware_check_len._entry_ptr.58 = internal global ptr @if_spi_prog_main_firmware_check_len._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: invalid size requested: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.if_spi_host_to_card = private unnamed_addr constant [20 x i8] c"if_spi_host_to_card\00", align 1
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't transfer buffer of type %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I/O error\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: got error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.if_spi_host_to_card_worker = private unnamed_addr constant [27 x i8] c"if_spi_host_to_card_worker\00", align 1
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: error: card has no data for host\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.if_spi_c2h_cmd = private unnamed_addr constant [15 x i8] c"if_spi_c2h_cmd\00", align 1
@.str.64 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: error: response packet too large: %d bytes, but maximum is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: err=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@__func__.if_spi_c2h_data = private unnamed_addr constant [16 x i8] c"if_spi_c2h_data\00", align 1
@.str.66 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: error: card has %d bytes of data, but our maximum skb size is %zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: error %d\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.if_spi_h2c = private unnamed_addr constant [11 x i8] c"if_spi_h2c\00", align 1
@__func__.if_spi_e2h = private unnamed_addr constant [11 x i8] c"if_spi_e2h\00", align 1
@libertas_spi_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.8, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017libertas spi: libertas_spi_remove\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"libertas_spi_remove\00", [44 x i8] zeroinitializer }, align 32
@libertas_spi_remove._entry_ptr = internal global ptr @libertas_spi_remove._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@if_spi_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.8, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016libertas_spi: Libertas SPI driver\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"if_spi_init_module\00", [45 x i8] zeroinitializer }, align 32
@if_spi_init_module._entry_ptr = internal global ptr @if_spi_init_module._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 4, i64 11, i64 16]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 16, i64 12, i64 24, i64 36]
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"libertas_spi_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1253, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1257, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"if_spi_pm_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1248, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1126, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1159, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1160, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1165, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1178, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1025, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [9 x i8] c"fw_table\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 99, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1034, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1043, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1048, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1062, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 448, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 407, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 100, i32 16 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 100, i32 48 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 101, i32 16 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 102, i32 16 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 102, i32 51 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 103, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 103, i32 45 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 104, i32 16 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 104, i32 48 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 530, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 308, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 593, i32 7 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 613, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 619, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 648, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 655, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 661, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 553, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 563, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 568, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 945, i32 25 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 975, i32 25 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 863, i32 25 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 926, i32 25 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 700, i32 25 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 706, i32 7 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 728, i32 25 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 753, i32 7 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 817, i32 25 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1203, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.306 = private constant [50 x i8] c"../drivers/net/wireless/marvell/libertas/if_spi.c\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1270, i32 2 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_alias360, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_file358, ptr @__UNIQUE_ID_firmware341, ptr @__UNIQUE_ID_firmware342, ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_license359, ptr @__exitcall_if_spi_exit_module, ptr @__initcall__kmod_libertas_spi__355_1281_if_spi_init_module6, ptr @if_spi_exit_module, ptr @if_spi_init_card._entry, ptr @if_spi_init_card._entry.16, ptr @if_spi_init_card._entry.19, ptr @if_spi_init_card._entry_ptr, ptr @if_spi_init_card._entry_ptr.18, ptr @if_spi_init_card._entry_ptr.21, ptr @if_spi_init_module._entry, ptr @if_spi_init_module._entry_ptr, ptr @if_spi_probe._entry, ptr @if_spi_probe._entry.9, ptr @if_spi_probe._entry_ptr, ptr @if_spi_probe._entry_ptr.11, ptr @if_spi_prog_helper_firmware._entry, ptr @if_spi_prog_helper_firmware._entry_ptr, ptr @if_spi_prog_main_firmware._entry, ptr @if_spi_prog_main_firmware._entry.42, ptr @if_spi_prog_main_firmware._entry.45, ptr @if_spi_prog_main_firmware._entry.48, ptr @if_spi_prog_main_firmware._entry_ptr, ptr @if_spi_prog_main_firmware._entry_ptr.44, ptr @if_spi_prog_main_firmware._entry_ptr.47, ptr @if_spi_prog_main_firmware._entry_ptr.50, ptr @if_spi_prog_main_firmware_check_len._entry, ptr @if_spi_prog_main_firmware_check_len._entry.53, ptr @if_spi_prog_main_firmware_check_len._entry.56, ptr @if_spi_prog_main_firmware_check_len._entry_ptr, ptr @if_spi_prog_main_firmware_check_len._entry_ptr.55, ptr @if_spi_prog_main_firmware_check_len._entry_ptr.58, ptr @libertas_spi_remove._entry, ptr @libertas_spi_remove._entry_ptr, ptr @spu_init._entry, ptr @spu_init._entry_ptr, ptr @spu_set_bus_mode._entry, ptr @spu_set_bus_mode._entry_ptr, ptr @spu_wait_for_u16._entry, ptr @spu_wait_for_u16._entry_ptr, ptr @libertas_spi_driver, ptr @.str, ptr @if_spi_pm_ops, ptr @if_spi_probe.__key, ptr @.str.1, ptr @if_spi_probe.__key.2, ptr @.str.3, ptr @if_spi_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @fw_table, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libertas_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_init_card._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_init_card._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_set_bus_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_prog_helper_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_wait_for_u16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_prog_main_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_prog_main_firmware._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_prog_main_firmware._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_prog_main_firmware._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_prog_main_firmware_check_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_prog_main_firmware_check_len._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_prog_main_firmware_check_len._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @libertas_spi_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_spi_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @if_spi_exit_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @libertas_spi_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @if_spi_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #11
  %call1 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @libertas_spi_driver) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %setup = getelementptr inbounds %struct.libertas_spi_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setup, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 %3(ptr noundef %spi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2588) #12
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.teardown_crit_edge, label %if.end12

if.end8.teardown_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %teardown

if.end12:                                         ; preds = %if.end8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %pdata13 = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %pdata13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %pdata13, align 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %prev_xfer_time = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %prev_xfer_time to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %prev_xfer_time, align 8
  %cmd_packet_list = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %cmd_packet_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %cmd_packet_list, ptr %cmd_packet_list, align 4
  %prev.i = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cmd_packet_list, ptr %prev.i, align 8
  %data_packet_list = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 14
  %12 = ptrtoint ptr %data_packet_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %data_packet_list, ptr %data_packet_list, align 4
  %prev.i140 = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %prev.i140 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data_packet_list, ptr %prev.i140, align 8
  %buffer_lock = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %buffer_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @if_spi_probe.__key, i16 noundef signext 3) #8
  %call16 = tail call fastcc i32 @if_spi_init_card(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.free_card_crit_edge

if.end12.free_card_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_card

if.end19:                                         ; preds = %if.end12
  %call21 = tail call ptr @lbs_add_card(ptr noundef nonnull %call7.i.i, ptr noundef %spi) #8
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call21 to i32
  br label %free_card

if.end25:                                         ; preds = %if.end19
  %priv26 = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %priv26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call21, ptr %priv26, align 4
  %setup_fw_on_resume = getelementptr inbounds %struct.lbs_private, ptr %call21, i32 0, i32 44
  %16 = ptrtoint ptr %setup_fw_on_resume to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %setup_fw_on_resume, align 4
  %card27 = getelementptr inbounds %struct.lbs_private, ptr %call21, i32 0, i32 39
  %17 = ptrtoint ptr %card27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %card27, align 4
  %hw_host_to_card = getelementptr inbounds %struct.lbs_private, ptr %call21, i32 0, i32 46
  %18 = ptrtoint ptr %hw_host_to_card to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @if_spi_host_to_card, ptr %hw_host_to_card, align 4
  %enter_deep_sleep = getelementptr inbounds %struct.lbs_private, ptr %call21, i32 0, i32 50
  %19 = ptrtoint ptr %enter_deep_sleep to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %enter_deep_sleep, align 4
  %exit_deep_sleep = getelementptr inbounds %struct.lbs_private, ptr %call21, i32 0, i32 51
  %20 = ptrtoint ptr %exit_deep_sleep to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %exit_deep_sleep, align 4
  %reset_deep_sleep_wakeup = getelementptr inbounds %struct.lbs_private, ptr %call21, i32 0, i32 52
  %21 = ptrtoint ptr %reset_deep_sleep_wakeup to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %reset_deep_sleep_wakeup, align 4
  %fw_ready = getelementptr inbounds %struct.lbs_private, ptr %call21, i32 0, i32 42
  %22 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %fw_ready, align 2
  %call28 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0) #8
  %workqueue = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call28, ptr %workqueue, align 8
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.end25.remove_card_crit_edge, label %do.body33

if.end25.remove_card_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_card

do.body33:                                        ; preds = %if.end25
  %packet_work = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %packet_work, i32 noundef 0) #8
  %24 = ptrtoint ptr %packet_work to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %packet_work, align 4
  %lockdep_map = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @if_spi_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry37 = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry37, ptr %entry37, align 8
  %prev.i141 = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i141 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry37, ptr %prev.i141, align 4
  %func = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 10, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @if_spi_host_to_card_worker, ptr %func, align 8
  %resume_work = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %resume_work, i32 noundef 0) #8
  %28 = ptrtoint ptr %resume_work to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %resume_work, align 8
  %lockdep_map47 = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map47, ptr noundef nonnull @.str.5, ptr noundef nonnull @if_spi_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry49 = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 11, i32 1
  %29 = ptrtoint ptr %entry49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry49, ptr %entry49, align 4
  %prev.i142 = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i142 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry49, ptr %prev.i142, align 8
  %func51 = getelementptr inbounds %struct.if_spi_card, ptr %call7.i.i, i32 0, i32 11, i32 2
  %31 = ptrtoint ptr %func51 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @if_spi_resume_worker, ptr %func51, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %33, ptr noundef nonnull @if_spi_host_interrupt, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool55.not = icmp eq i32 %call.i, 0
  br i1 %tobool55.not, label %if.end61, label %do.end59

do.end59:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %terminate_workqueue

if.end61:                                         ; preds = %do.body33
  %call62 = tail call i32 @lbs_start_card(ptr noundef %call21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %do.body66, label %release_irq

do.body66:                                        ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %34 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body66.out_crit_edge, label %do.end70

do.body66.out_crit_edge:                          ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end70:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %out

release_irq:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call77 = tail call ptr @free_irq(i32 noundef %36, ptr noundef nonnull %call7.i.i) #8
  br label %terminate_workqueue

terminate_workqueue:                              ; preds = %release_irq, %do.end59
  %err.0 = phi i32 [ %call.i, %do.end59 ], [ %call62, %release_irq ]
  %37 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %workqueue, align 8
  tail call void @destroy_workqueue(ptr noundef %38) #8
  br label %remove_card

remove_card:                                      ; preds = %terminate_workqueue, %if.end25.remove_card_crit_edge
  %err.1 = phi i32 [ %err.0, %terminate_workqueue ], [ -12, %if.end25.remove_card_crit_edge ]
  tail call void @lbs_remove_card(ptr noundef %call21) #8
  br label %free_card

free_card:                                        ; preds = %remove_card, %if.then23, %if.end12.free_card_crit_edge
  %err.2 = phi i32 [ %call16, %if.end12.free_card_crit_edge ], [ %14, %if.then23 ], [ %err.1, %remove_card ]
  tail call fastcc void @free_if_spi_card(ptr noundef nonnull %call7.i.i)
  br label %teardown

teardown:                                         ; preds = %free_card, %if.end8.teardown_crit_edge
  %err.3 = phi i32 [ %err.2, %free_card ], [ -12, %if.end8.teardown_crit_edge ]
  %teardown79 = getelementptr inbounds %struct.libertas_spi_platform_data, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %teardown79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %teardown79, align 4
  %tobool80.not = icmp eq ptr %40, null
  br i1 %tobool80.not, label %teardown.out_crit_edge, label %if.then81

teardown.out_crit_edge:                           ; preds = %teardown
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then81:                                        ; preds = %teardown
  call void @__sanitizer_cov_trace_pc() #10
  %call83 = tail call i32 %40(ptr noundef %spi) #8
  br label %out

out:                                              ; preds = %if.then81, %teardown.out_crit_edge, %do.end70, %do.body66.out_crit_edge, %if.then2.out_crit_edge, %entry.out_crit_edge
  %err.4 = phi i32 [ %call4, %if.then2.out_crit_edge ], [ %err.3, %if.then81 ], [ %err.3, %teardown.out_crit_edge ], [ 0, %do.end70 ], [ 0, %do.body66.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  ret i32 %err.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @libertas_spi_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv1 = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %4 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %resume_work = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 11
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %resume_work) #8
  tail call void @lbs_stop_card(ptr noundef %3) #8
  tail call void @lbs_remove_card(ptr noundef %3) #8
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %1) #8
  %workqueue = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %8) #8
  %pdata = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata, align 4
  %teardown = getelementptr inbounds %struct.libertas_spi_platform_data, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %teardown to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %teardown, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %do.end5.if.end12_crit_edge, label %if.then8

do.end5.if.end12_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 %12(ptr noundef %spi) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %do.end5.if.end12_crit_edge
  tail call fastcc void @free_if_spi_card(ptr noundef %1)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @if_spi_init_card(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  %buff.i33.i = alloca i16, align 2
  %buff.i31.i = alloca i16, align 2
  %buff.i75.i = alloca i16, align 2
  %buff.i73.i = alloca i16, align 2
  %buff.i71.i = alloca i16, align 2
  %buff.i69.i = alloca i16, align 2
  %buff.i67.i = alloca i16, align 2
  %buf.i.i.i126 = alloca i16, align 2
  %buff.i.i = alloca i16, align 2
  %buff.i35.i.i = alloca i16, align 2
  %buff.i.i.i127 = alloca i16, align 2
  %temp.i = alloca [64 x i8], align 1
  %buf.i = alloca i32, align 4
  %buf.i.i119 = alloca i32, align 4
  %buf.i.i45.i = alloca i16, align 2
  %buff.i.i46.i = alloca i16, align 2
  %buf.i.i = alloca i32, align 4
  %buf.i.i.i = alloca i16, align 2
  %buff.i.i.i = alloca i16, align 2
  %helper = alloca ptr, align 4
  %mainfw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %helper) #8
  %2 = ptrtoint ptr %helper to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %helper, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mainfw) #8
  %3 = ptrtoint ptr %mainfw to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %mainfw, align 4
  %pdata = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 2
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  %use_dummy_writes1.i = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 6
  %8 = ptrtoint ptr %use_dummy_writes1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %use_dummy_writes1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i.i.i) #8
  %9 = ptrtoint ptr %buff.i.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 512, ptr %buff.i.i.i, align 2
  %call.i.i.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 112, ptr noundef nonnull %buff.i.i.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #8
  %10 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %buf.i.i.i, align 2, !annotation !197
  %call.i16.i.i = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 112, ptr noundef nonnull %buf.i.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i16.i.i, 0
  br i1 %cmp.i.i.i, label %if.end4.i.i, label %spu_read_u16.exit.i.i

spu_read_u16.exit.i.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #8
  br label %out

if.end4.i.i:                                      ; preds = %if.end.i.i
  %11 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %buf.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #8
  %13 = and i16 %12, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %13)
  %cmp.not.i.i = icmp eq i16 %13, 512
  br i1 %cmp.not.i.i, label %if.end.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %out

if.end.i:                                         ; preds = %if.end4.i.i
  %spu_port_delay.i = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 7
  %14 = ptrtoint ptr %spu_port_delay.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1000, ptr %spu_port_delay.i, align 4
  %spu_reg_delay.i = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 8
  %15 = ptrtoint ptr %spu_reg_delay.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1000, ptr %spu_reg_delay.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #8
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %buf.i.i, align 4, !annotation !197
  %call.i.i = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 108, ptr noundef nonnull %buf.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i43.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i43.i, label %if.end5.i, label %spu_read_u32.exit.i

spu_read_u32.exit.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #8
  br label %out

if.end5.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf.i.i, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #8
  %and.i = and i32 %19, 65535
  %20 = ptrtoint ptr %spu_port_delay.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.i, ptr %spu_port_delay.i, align 4
  %shr.i = lshr i32 %19, 16
  %21 = ptrtoint ptr %spu_reg_delay.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.i, ptr %spu_reg_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool9.not.i = icmp eq i16 %7, 0
  br i1 %tobool9.not.i, label %if.end5.i.do.body.i_crit_edge, label %if.then10.i

if.end5.i.do.body.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then10.i:                                      ; preds = %if.end5.i
  %22 = ptrtoint ptr %use_dummy_writes1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %use_dummy_writes1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i.i46.i) #8
  %23 = ptrtoint ptr %buff.i.i46.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1536, ptr %buff.i.i46.i, align 2
  %call.i.i47.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 112, ptr noundef nonnull %buff.i.i46.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i.i46.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47.i)
  %tobool.not.i48.i = icmp eq i32 %call.i.i47.i, 0
  br i1 %tobool.not.i48.i, label %if.end.i51.i, label %if.then10.i.out_crit_edge

if.then10.i.out_crit_edge:                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i51.i:                                     ; preds = %if.then10.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i45.i) #8
  %24 = ptrtoint ptr %buf.i.i45.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %buf.i.i45.i, align 2, !annotation !197
  %call.i16.i49.i = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 112, ptr noundef nonnull %buf.i.i45.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i49.i)
  %cmp.i.i50.i = icmp eq i32 %call.i16.i49.i, 0
  br i1 %cmp.i.i50.i, label %if.end4.i54.i, label %spu_read_u16.exit.i52.i

spu_read_u16.exit.i52.i:                          ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i45.i) #8
  br label %out

if.end4.i54.i:                                    ; preds = %if.end.i51.i
  %25 = ptrtoint ptr %buf.i.i45.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %buf.i.i45.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i45.i) #8
  %27 = and i16 %26, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %27)
  %cmp.not.i53.i = icmp eq i16 %27, 1536
  br i1 %cmp.not.i53.i, label %if.end4.i54.i.do.body.i_crit_edge, label %do.end.i56.i

if.end4.i54.i.do.body.i_crit_edge:                ; preds = %if.end4.i54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i56.i:                                     ; preds = %if.end4.i54.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %out

do.body.i:                                        ; preds = %if.end4.i54.i.do.body.i_crit_edge, %if.end5.i.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %28 = load i32, ptr @lbs_debug, align 4
  %and17.i = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %cmp.not.i = icmp eq i32 %and17.i, 0
  br i1 %cmp.not.i, label %do.body.i.if.end_crit_edge, label %do.end.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %spu_port_delay.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %spu_port_delay.i, align 4
  %31 = ptrtoint ptr %spu_reg_delay.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %spu_reg_delay.i, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %30, i32 noundef %32) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %do.body.i.if.end_crit_edge
  %card_id = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 3
  %card_rev = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i119) #8
  %33 = ptrtoint ptr %buf.i.i119 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %buf.i.i119, align 4, !annotation !197
  %call.i.i120 = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 0, ptr noundef nonnull %buf.i.i119, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i120)
  %tobool.not.i.i121 = icmp eq i32 %call.i.i120, 0
  br i1 %tobool.not.i.i121, label %if.end5, label %spu_get_chip_revision.exit

spu_get_chip_revision.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i119) #8
  br label %out

if.end5:                                          ; preds = %if.end
  %34 = ptrtoint ptr %buf.i.i119 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf.i.i119, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i119) #8
  %shr.i123 = lshr i32 %36, 16
  %conv.i = trunc i32 %shr.i123 to i16
  %37 = ptrtoint ptr %card_id to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i, ptr %card_id, align 2
  %conv2.i = trunc i32 %36 to i8
  %38 = ptrtoint ptr %card_rev to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv2.i, ptr %card_rev, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #8
  %39 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %buf.i, align 4, !annotation !197
  %call.i = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 52, ptr noundef nonnull %buf.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end9, label %spu_read_u32.exit

spu_read_u32.exit:                                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  br label %out

if.end9:                                          ; preds = %if.end5
  %40 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2004318072, i32 %41)
  %cmp = icmp eq i32 %41, -2004318072
  br i1 %cmp, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end9
  %42 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %card_id, align 4
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i16 %43, label %if.then30 [
    i16 4, label %for.cond.preheader.if.end33_crit_edge
    i16 11, label %for.cond.preheader.if.end33_crit_edge165
    i16 16, label %for.cond.preheader.if.end33_crit_edge166
    i16 0, label %for.cond.preheader.if.end33_crit_edge167
  ]

for.cond.preheader.if.end33_crit_edge167:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

for.cond.preheader.if.end33_crit_edge166:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

for.cond.preheader.if.end33_crit_edge165:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

for.cond.preheader.if.end33_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.body:                                          ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %45 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12.not = icmp eq i32 %and, 0
  br i1 %cmp12.not, label %do.body.if.end85_crit_edge, label %do.body.if.end85.sink.split_crit_edge

do.body.if.end85.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85.sink.split

do.body.if.end85_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then30:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %48 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %card_id, align 4
  %conv32 = zext i16 %49 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %47, ptr noundef nonnull @.str.14, i32 noundef %conv32) #11
  br label %out

if.end33:                                         ; preds = %for.cond.preheader.if.end33_crit_edge, %for.cond.preheader.if.end33_crit_edge165, %for.cond.preheader.if.end33_crit_edge166, %for.cond.preheader.if.end33_crit_edge167
  %50 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card, align 4
  %52 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %card_id, align 4
  %conv36 = zext i16 %53 to i32
  %call37 = call i32 @lbs_get_firmware(ptr noundef %51, i32 noundef %conv36, ptr noundef nonnull @fw_table, ptr noundef nonnull %helper, ptr noundef nonnull %mainfw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.body42, label %if.then39

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.15, i32 noundef %call37) #11
  br label %out

do.body42:                                        ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %56 = load i32, ptr @lbs_debug, align 4
  %and43 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %cmp44.not = icmp eq i32 %and43, 0
  br i1 %cmp44.not, label %do.body42.do.end63_crit_edge, label %do.end49

do.body42.do.end63_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

do.end49:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %card_id, align 4
  %conv52 = zext i16 %58 to i32
  %59 = ptrtoint ptr %card_rev to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %card_rev, align 2
  %conv54 = zext i8 %60 to i32
  %61 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %master, align 4
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %bus_num to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %bus_num, align 8
  %conv56 = sext i16 %66 to i32
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %62, i32 0, i32 4
  %67 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %chip_select, align 4
  %conv58 = zext i8 %68 to i32
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %62, i32 0, i32 3
  %69 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_speed_hz, align 8
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv52, i32 noundef %conv54, i32 noundef %conv56, i32 noundef %conv58, i32 noundef %70) #11
  br label %do.end63

do.end63:                                         ; preds = %do.end49, %do.body42.do.end63_crit_edge
  %71 = ptrtoint ptr %helper to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %helper, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp.i) #8
  %73 = call ptr @memset(ptr %temp.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i.i.i127) #8
  %74 = ptrtoint ptr %buff.i.i.i127 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %buff.i.i.i127, align 2
  %call.i.i.i128 = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 100, ptr noundef nonnull %buff.i.i.i127, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i.i.i127) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i128)
  %tobool1.not.i.i = icmp eq i32 %call.i.i.i128, 0
  br i1 %tobool1.not.i.i, label %if.end7.i.i, label %do.end63.if_spi_prog_helper_firmware.exit_crit_edge

do.end63.if_spi_prog_helper_firmware.exit_crit_edge: ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_prog_helper_firmware.exit

if.end7.i.i:                                      ; preds = %do.end63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i35.i.i) #8
  %75 = ptrtoint ptr %buff.i35.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %buff.i35.i.i, align 2
  %call.i36.i.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 100, ptr noundef nonnull %buff.i35.i.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i35.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i.i)
  %tobool16.not.i.i = icmp eq i32 %call.i36.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end.i129, label %if.end7.i.i.if_spi_prog_helper_firmware.exit_crit_edge

if.end7.i.i.if_spi_prog_helper_firmware.exit_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_prog_helper_firmware.exit

if.end.i129:                                      ; preds = %if.end7.i.i
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp89.i = icmp sgt i32 %77, 0
  br i1 %cmp89.i, label %while.body.preheader.i, label %if.end.i129.while.end27.i_crit_edge

if.end.i129.while.end27.i_crit_edge:              ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end27.i

while.body.preheader.i:                           ; preds = %if.end.i129
  %data.i = getelementptr inbounds %struct.firmware, ptr %72, i32 0, i32 1
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end26.i.while.body.i_crit_edge, %while.body.preheader.i
  %bytes_remaining.091.i = phi i32 [ %sub.i, %if.end26.i.while.body.i_crit_edge ], [ %77, %while.body.preheader.i ]
  %fw.090.i = phi ptr [ %add.ptr.i, %if.end26.i.while.body.i_crit_edge ], [ %79, %while.body.preheader.i ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i.i) #8
  %80 = ptrtoint ptr %buff.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 16384, ptr %buff.i.i, align 2
  %call.i.i130 = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 40, ptr noundef nonnull %buff.i.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130)
  %tobool2.not.i = icmp eq i32 %call.i.i130, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %while.body.i.if_spi_prog_helper_firmware.exit_crit_edge

while.body.i.if_spi_prog_helper_firmware.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_prog_helper_firmware.exit

if.end4.i:                                        ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %81, 500
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end11.i.i.while.cond.i.i_crit_edge, %if.end4.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i126) #8
  %82 = ptrtoint ptr %buf.i.i.i126 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 -1, ptr %buf.i.i.i126, align 2, !annotation !197
  %call.i.i66.i = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 92, ptr noundef nonnull %buf.i.i.i126, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66.i)
  %cmp.i.i.i131 = icmp eq i32 %call.i.i66.i, 0
  br i1 %cmp.i.i.i131, label %if.end.i.i133, label %spu_read_u16.exit.i.i132

spu_read_u16.exit.i.i132:                         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i126) #8
  br label %if_spi_prog_helper_firmware.exit

if.end.i.i133:                                    ; preds = %while.cond.i.i
  %83 = ptrtoint ptr %buf.i.i.i126 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %buf.i.i.i126, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i126) #8
  %85 = call i16 @llvm.bswap.i16(i16 %84) #8
  %and26.i.i = and i16 %85, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and26.i.i)
  %cmp.i.not.i = icmp eq i16 %and26.i.i, 0
  br i1 %cmp.i.not.i, label %if.end11.i.i, label %if.end8.i

if.end11.i.i:                                     ; preds = %if.end.i.i133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %86(i32 noundef 21474800) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %87
  %cmp12.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp12.i.i, label %do.end.i.i134, label %if.end11.i.i.while.cond.i.i_crit_edge

if.end11.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

do.end.i.i134:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv15.i.i = zext i16 %85 to i32
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %conv15.i.i, i32 noundef 4, i32 noundef 4) #11
  br label %if_spi_prog_helper_firmware.exit

if.end8.i:                                        ; preds = %if.end.i.i133
  %88 = call ptr @memset(ptr %temp.i, i32 0, i32 64)
  %89 = call i32 @llvm.smin.i32(i32 %bytes_remaining.091.i, i32 64) #8
  %90 = call ptr @memcpy(ptr %temp.i, ptr %fw.090.i, i32 %89)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %92(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %93(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %94(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %95(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %96(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %97(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %98(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %99(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %100(i32 noundef 214748000) #8
  %call15.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 24, ptr noundef nonnull %temp.i, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end8.i.if_spi_prog_helper_firmware.exit_crit_edge

if.end8.i.if_spi_prog_helper_firmware.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_prog_helper_firmware.exit

if.end18.i:                                       ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i67.i) #8
  %101 = ptrtoint ptr %buff.i67.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %buff.i67.i, align 2
  %call.i68.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 92, ptr noundef nonnull %buff.i67.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i67.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %tobool20.not.i = icmp eq i32 %call.i68.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.if_spi_prog_helper_firmware.exit_crit_edge

if.end18.i.if_spi_prog_helper_firmware.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_prog_helper_firmware.exit

if.end22.i:                                       ; preds = %if.end18.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i69.i) #8
  %102 = ptrtoint ptr %buff.i69.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1024, ptr %buff.i69.i, align 2
  %call.i70.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 68, ptr noundef nonnull %buff.i69.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i69.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool24.not.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end22.i.if_spi_prog_helper_firmware.exit_crit_edge

if.end22.i.if_spi_prog_helper_firmware.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_prog_helper_firmware.exit

if.end26.i:                                       ; preds = %if.end22.i
  %sub.i = add nsw i32 %bytes_remaining.091.i, -64
  %add.ptr.i = getelementptr i8, ptr %fw.090.i, i32 64
  %cmp.i = icmp sgt i32 %bytes_remaining.091.i, 64
  br i1 %cmp.i, label %if.end26.i.while.body.i_crit_edge, label %if.end26.i.while.end27.i_crit_edge

if.end26.i.while.end27.i_crit_edge:               ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end27.i

if.end26.i.while.body.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end27.i:                                    ; preds = %if.end26.i.while.end27.i_crit_edge, %if.end.i129.while.end27.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i71.i) #8
  %103 = ptrtoint ptr %buff.i71.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %buff.i71.i, align 2
  %call.i72.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 40, ptr noundef nonnull %buff.i71.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i71.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %tobool29.not.i = icmp eq i32 %call.i72.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %while.end27.i.if_spi_prog_helper_firmware.exit_crit_edge

while.end27.i.if_spi_prog_helper_firmware.exit_crit_edge: ; preds = %while.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_prog_helper_firmware.exit

if.end31.i:                                       ; preds = %while.end27.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i73.i) #8
  %104 = ptrtoint ptr %buff.i73.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %buff.i73.i, align 2
  %call.i74.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 92, ptr noundef nonnull %buff.i73.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i73.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %tobool33.not.i = icmp eq i32 %call.i74.i, 0
  br i1 %tobool33.not.i, label %out.i, label %if.end31.i.if_spi_prog_helper_firmware.exit_crit_edge

if.end31.i.if_spi_prog_helper_firmware.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_prog_helper_firmware.exit

out.i:                                            ; preds = %if.end31.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i75.i) #8
  %105 = ptrtoint ptr %buff.i75.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 1024, ptr %buff.i75.i, align 2
  %call.i76.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 68, ptr noundef nonnull %buff.i75.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i75.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool37.not.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool37.not.i, label %if.end67, label %out.i.if_spi_prog_helper_firmware.exit_crit_edge

out.i.if_spi_prog_helper_firmware.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_prog_helper_firmware.exit

if_spi_prog_helper_firmware.exit:                 ; preds = %out.i.if_spi_prog_helper_firmware.exit_crit_edge, %if.end31.i.if_spi_prog_helper_firmware.exit_crit_edge, %while.end27.i.if_spi_prog_helper_firmware.exit_crit_edge, %if.end22.i.if_spi_prog_helper_firmware.exit_crit_edge, %if.end18.i.if_spi_prog_helper_firmware.exit_crit_edge, %if.end8.i.if_spi_prog_helper_firmware.exit_crit_edge, %do.end.i.i134, %spu_read_u16.exit.i.i132, %while.body.i.if_spi_prog_helper_firmware.exit_crit_edge, %if.end7.i.i.if_spi_prog_helper_firmware.exit_crit_edge, %do.end63.if_spi_prog_helper_firmware.exit_crit_edge
  %err.083.i = phi i32 [ %call.i76.i, %out.i.if_spi_prog_helper_firmware.exit_crit_edge ], [ %call.i74.i, %if.end31.i.if_spi_prog_helper_firmware.exit_crit_edge ], [ %call.i72.i, %while.end27.i.if_spi_prog_helper_firmware.exit_crit_edge ], [ %call.i36.i.i, %if.end7.i.i.if_spi_prog_helper_firmware.exit_crit_edge ], [ %call.i.i.i128, %do.end63.if_spi_prog_helper_firmware.exit_crit_edge ], [ -110, %do.end.i.i134 ], [ %call.i.i66.i, %spu_read_u16.exit.i.i132 ], [ %call.i70.i, %if.end22.i.if_spi_prog_helper_firmware.exit_crit_edge ], [ %call.i68.i, %if.end18.i.if_spi_prog_helper_firmware.exit_crit_edge ], [ %call15.i, %if.end8.i.if_spi_prog_helper_firmware.exit_crit_edge ], [ %call.i.i130, %while.body.i.if_spi_prog_helper_firmware.exit_crit_edge ]
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %err.083.i) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp.i) #8
  br label %out

if.end67:                                         ; preds = %out.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp.i) #8
  %106 = ptrtoint ptr %mainfw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mainfw, align 4
  %call68 = call fastcc i32 @if_spi_prog_main_firmware(ptr noundef %card, ptr noundef %107)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.body72, label %if.end67.out_crit_edge

if.end67.out_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body72:                                        ; preds = %if.end67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %108 = load i32, ptr @lbs_debug, align 4
  %and73 = and i32 %108, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %cmp74.not = icmp eq i32 %and73, 0
  br i1 %cmp74.not, label %do.body72.if.end85_crit_edge, label %do.body72.if.end85.sink.split_crit_edge

do.body72.if.end85.sink.split_crit_edge:          ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85.sink.split

do.body72.if.end85_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.end85.sink.split:                              ; preds = %do.body72.if.end85.sink.split_crit_edge, %do.body.if.end85.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.12, %do.body.if.end85.sink.split_crit_edge ], [ @.str.20, %do.body72.if.end85.sink.split_crit_edge ]
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.20.sink) #11
  br label %if.end85

if.end85:                                         ; preds = %if.end85.sink.split, %do.body72.if.end85_crit_edge, %do.body.if.end85_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i31.i) #8
  %109 = ptrtoint ptr %buff.i31.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 7936, ptr %buff.i31.i, align 2
  %call.i32.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 100, ptr noundef nonnull %buff.i31.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i31.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool4.not.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %if.end85.out_crit_edge

if.end85.out_crit_edge:                           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7.i:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i33.i) #8
  %110 = ptrtoint ptr %buff.i33.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 -8191, ptr %buff.i33.i, align 2
  %call.i34.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 64, ptr noundef nonnull %buff.i33.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i33.i) #8
  br label %out

out:                                              ; preds = %if.end7.i, %if.end85.out_crit_edge, %if.end67.out_crit_edge, %if_spi_prog_helper_firmware.exit, %if.then39, %if.then30, %spu_read_u32.exit, %spu_get_chip_revision.exit, %do.end.i56.i, %spu_read_u16.exit.i52.i, %if.then10.i.out_crit_edge, %spu_read_u32.exit.i, %do.end.i.i, %spu_read_u16.exit.i.i, %entry.out_crit_edge
  %err.0 = phi i32 [ %call.i.i120, %spu_get_chip_revision.exit ], [ %call.i, %spu_read_u32.exit ], [ -19, %if.then30 ], [ %call37, %if.then39 ], [ %err.083.i, %if_spi_prog_helper_firmware.exit ], [ %call68, %if.end67.out_crit_edge ], [ %call.i32.i, %if.end85.out_crit_edge ], [ -5, %do.end.i56.i ], [ %call.i.i47.i, %if.then10.i.out_crit_edge ], [ %call.i16.i49.i, %spu_read_u16.exit.i52.i ], [ -5, %do.end.i.i ], [ %call.i.i.i, %entry.out_crit_edge ], [ %call.i16.i.i, %spu_read_u16.exit.i.i ], [ %call.i.i, %spu_read_u32.exit.i ], [ %call.i34.i, %if.end7.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mainfw) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %helper) #8
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lbs_add_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_spi_host_to_card(ptr nocapture noundef %priv, i8 noundef zeroext %type, ptr nocapture noundef readonly %buf, i16 noundef zeroext %nb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %conv = zext i16 %nb to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nb)
  %cmp = icmp eq i16 %nb, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.if_spi_host_to_card, i32 noundef 0) #11
  br label %out

if.end:                                           ; preds = %entry
  %add = add i16 %nb, 3
  %and = and i16 %add, -4
  %conv6 = zext i16 %and to i32
  %add7 = add nuw nsw i32 %conv6, 12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add7, i32 noundef 2848) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9:                                          ; preds = %if.end
  %blen10 = getelementptr inbounds %struct.if_spi_packet, ptr %call9.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %blen10 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %and, ptr %blen10, align 8
  %buffer = getelementptr inbounds %struct.if_spi_packet, ptr %call9.i.i, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %buffer, ptr %buf, i32 %conv)
  %add.ptr = getelementptr i8, ptr %buffer, i32 %conv
  %sub = sub nsw i32 %conv6, %conv
  %6 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %7 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %type, label %sw.default [
    i8 1, label %sw.bb
    i8 0, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end9
  %dnld_sent = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 58
  %8 = ptrtoint ptr %dnld_sent to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %dnld_sent, align 1
  %buffer_lock = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 15
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock) #8
  %cmd_packet_list = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %10, ptr noundef %cmd_packet_list) #8
  br i1 %call.i.i, label %if.end.i.i73, label %sw.bb.list_add_tail.exit_crit_edge

sw.bb.list_add_tail.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i73:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %12 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmd_packet_list, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call9.i.i, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i73, %sw.bb.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock, i32 noundef %call22) #8
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end9
  %dnld_sent27 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 58
  %15 = ptrtoint ptr %dnld_sent27 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %dnld_sent27, align 1
  %buffer_lock35 = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 15
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock35) #8
  %data_packet_list = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 14
  %prev.i74 = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i74, align 4
  %call.i.i75 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %17, ptr noundef %data_packet_list) #8
  br i1 %call.i.i75, label %if.end.i.i77, label %sw.bb26.list_add_tail.exit78_crit_edge

sw.bb26.list_add_tail.exit78_crit_edge:           ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit78

if.end.i.i77:                                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %prev.i74, align 4
  %19 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data_packet_list, ptr %call9.i.i, align 128
  %prev3.i.i76 = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i76 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i76, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call9.i.i, ptr %17, align 4
  br label %list_add_tail.exit78

list_add_tail.exit78:                             ; preds = %if.end.i.i77, %sw.bb26.list_add_tail.exit78_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock35, i32 noundef %call37) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %conv17 = zext i8 %type to i32
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.60, i32 noundef %conv17) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %list_add_tail.exit78, %list_add_tail.exit
  %err.0 = phi i32 [ -22, %sw.default ], [ 0, %list_add_tail.exit78 ], [ 0, %list_add_tail.exit ]
  %workqueue = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %workqueue, align 4
  %packet_work = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %packet_work) #8
  br label %out

out:                                              ; preds = %sw.epilog, %if.end.out_crit_edge, %if.then
  %err.1 = phi i32 [ -22, %if.then ], [ %err.0, %sw.epilog ], [ -12, %if.end.out_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_spi_host_to_card_worker(ptr noundef %work) #2 align 64 {
entry:
  %buff.i14.i = alloca i16, align 2
  %buff.i.i = alloca i16, align 2
  %buf.i.i152 = alloca i32, align 4
  %buf.i.i114 = alloca i16, align 2
  %buf.i.i = alloca i16, align 2
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %priv1 = getelementptr i8, ptr %work, i32 -32
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %buf.i, align 2, !annotation !197
  %call.i = call fastcc i32 @spu_read(ptr noundef %add.ptr, i16 noundef zeroext 92, ptr noundef nonnull %buf.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.61) #11
  br label %if.then83

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %buf.i, align 2
  %7 = call i16 @llvm.bswap.i16(i16 %6) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %8 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %9 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %11 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %buf.i.i, align 2, !annotation !197
  %call.i.i = call fastcc i32 @spu_read(ptr noundef %add.ptr, i16 noundef zeroext 44, ptr noundef nonnull %buf.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i, label %spu_read_u16.exit.i

spu_read_u16.exit.i:                              ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %if_spi_c2h_cmd.exit

if.end.i:                                         ; preds = %if.then3
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %buf.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool8.not.i = icmp eq i16 %13, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.if_spi_c2h_cmd) #11
  br label %if_spi_c2h_cmd.exit

if.else.i:                                        ; preds = %if.end.i
  %16 = call i16 @llvm.bswap.i16(i16 %13) #8
  %conv.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2400, i16 %16)
  %cmp.i113 = icmp ugt i16 %16, 2400
  br i1 %cmp.i113, label %if.then11.i, label %if.end15.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.if_spi_c2h_cmd, i32 noundef %conv.i, i32 noundef 2400) #11
  br label %if_spi_c2h_cmd.exit

if.end15.i:                                       ; preds = %if.else.i
  %cmd_buffer.i = getelementptr i8, ptr %work, i32 88
  %add.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %add.i, 131068
  %call17.i = call fastcc i32 @spu_read(ptr noundef %add.ptr, i16 noundef zeroext 24, ptr noundef %cmd_buffer.i, i32 noundef %and.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %do.body22.i, label %if.end15.i.if_spi_c2h_cmd.exit_crit_edge

if.end15.i.if_spi_c2h_cmd.exit_crit_edge:         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_c2h_cmd.exit

do.body22.i:                                      ; preds = %if.end15.i
  %driver_lock.i = getelementptr inbounds %struct.lbs_private, ptr %10, i32 0, i32 87
  %call26.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #8
  %resp_idx.i = getelementptr inbounds %struct.lbs_private, ptr %10, i32 0, i32 66
  %19 = ptrtoint ptr %resp_idx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %resp_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp32.i = icmp eq i8 %20, 0
  %idxprom.i = zext i1 %cmp32.i to i32
  %arrayidx.i = getelementptr %struct.lbs_private, ptr %10, i32 0, i32 68, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool36.not.i = icmp eq i32 %22, 0
  br i1 %tobool36.not.i, label %if_spi_c2h_cmd.exit.thread, label %do.body40.i, !prof !198

do.body40.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/if_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 720, 0\0A.popsection", ""() #8, !srcloc !199
  unreachable

if_spi_c2h_cmd.exit.thread:                       ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv34.i = zext i1 %cmp32.i to i8
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i, ptr %arrayidx.i, align 4
  %arrayidx54.i = getelementptr %struct.lbs_private, ptr %10, i32 0, i32 67, i32 %idxprom.i
  %24 = call ptr @memcpy(ptr %arrayidx54.i, ptr %cmd_buffer.i, i32 %conv.i)
  call void @lbs_notify_command_response(ptr noundef %10, i8 noundef zeroext %conv34.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call26.i) #8
  br label %if.end8

if_spi_c2h_cmd.exit:                              ; preds = %if.end15.i.if_spi_c2h_cmd.exit_crit_edge, %if.then11.i, %if.then9.i, %spu_read_u16.exit.i
  %err.0.ph.i = phi i32 [ -22, %if.then9.i ], [ %call17.i, %if.end15.i.if_spi_c2h_cmd.exit_crit_edge ], [ -22, %if.then11.i ], [ %call.i.i, %spu_read_u16.exit.i ]
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.if_spi_c2h_cmd, i32 noundef %err.0.ph.i) #11
  br label %if.then83

if.end8:                                          ; preds = %if_spi_c2h_cmd.exit.thread, %if.end.if.end8_crit_edge
  %27 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool11.not = icmp eq i16 %27, 0
  br i1 %tobool11.not, label %if.end8.if.end17_crit_edge, label %if.then12

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12:                                        ; preds = %if.end8
  %28 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i114) #8
  %30 = ptrtoint ptr %buf.i.i114 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %buf.i.i114, align 2, !annotation !197
  %call.i.i116 = call fastcc i32 @spu_read(ptr noundef %add.ptr, i16 noundef zeroext 40, ptr noundef nonnull %buf.i.i114, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i116)
  %cmp.i.i117 = icmp eq i32 %call.i.i116, 0
  br i1 %cmp.i.i117, label %if.end.i119, label %spu_read_u16.exit.i118

spu_read_u16.exit.i118:                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i114) #8
  br label %if_spi_c2h_data.exit

if.end.i119:                                      ; preds = %if.then12
  %31 = ptrtoint ptr %buf.i.i114 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %buf.i.i114, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %32) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i114) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool2.not.i = icmp eq i16 %32, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i121

if.then3.i:                                       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.if_spi_c2h_data) #11
  br label %if_spi_c2h_data.exit

if.else.i121:                                     ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_const_cmp2(i16 1578, i16 %33)
  %cmp.i120 = icmp ugt i16 %33, 1578
  br i1 %cmp.i120, label %if.then5.i, label %if.end9.i

if.then5.i:                                       ; preds = %if.else.i121
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i122 = zext i16 %33 to i32
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.if_spi_c2h_data, i32 noundef %conv.i122, i32 noundef 1578) #11
  br label %if_spi_c2h_data.exit

if.end9.i:                                        ; preds = %if.else.i121
  %call.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1578, i32 noundef 2592) #8
  %tobool11.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool11.not.i, label %if.end9.i.if_spi_c2h_data.exit_crit_edge, label %if.end13.i

if.end9.i.if_spi_c2h_data.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_c2h_data.exit

if.end13.i:                                       ; preds = %if.end9.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %41, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %conv14.i = zext i16 %33 to i32
  %call15.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %conv14.i) #8
  %add.i123 = add nuw nsw i32 %conv14.i, 3
  %and.i124 = and i32 %add.i123, 131068
  %call17.i125 = call fastcc i32 @spu_read(ptr noundef %add.ptr, i16 noundef zeroext 36, ptr noundef %call15.i, i32 noundef %and.i124) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i125)
  %tobool18.not.i126 = icmp eq i32 %call17.i125, 0
  br i1 %tobool18.not.i126, label %out.i127, label %if.then19.i

if.then19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @consume_skb(ptr noundef nonnull %call.i.i.i) #8
  br label %if_spi_c2h_data.exit

out.i127:                                         ; preds = %if.end13.i
  %42 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv1, align 4
  %call22.i = call i32 @lbs_process_rxed_packet(ptr noundef %43, ptr noundef nonnull %call.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %out.i127.if.end17_crit_edge, label %out.i127.if_spi_c2h_data.exit_crit_edge

out.i127.if_spi_c2h_data.exit_crit_edge:          ; preds = %out.i127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_c2h_data.exit

out.i127.if.end17_crit_edge:                      ; preds = %out.i127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if_spi_c2h_data.exit:                             ; preds = %out.i127.if_spi_c2h_data.exit_crit_edge, %if.then19.i, %if.end9.i.if_spi_c2h_data.exit_crit_edge, %if.then5.i, %if.then3.i, %spu_read_u16.exit.i118
  %err.046.i = phi i32 [ %call22.i, %out.i127.if_spi_c2h_data.exit_crit_edge ], [ -105, %if.end9.i.if_spi_c2h_data.exit_crit_edge ], [ -22, %if.then3.i ], [ %call17.i125, %if.then19.i ], [ -22, %if.then5.i ], [ %call.i.i116, %spu_read_u16.exit.i118 ]
  %44 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %45, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.if_spi_c2h_data, i32 noundef %err.046.i) #11
  br label %if.then83

if.end17:                                         ; preds = %out.i127.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %conv18 = zext i16 %7 to i32
  %and19 = and i32 %conv18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.end17.if.then26_crit_edge

if.end17.if.then26_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.end17
  %46 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv1, align 4
  %psstate = getelementptr inbounds %struct.lbs_private, ptr %47, i32 0, i32 26
  %48 = ptrtoint ptr %psstate to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %psstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.not = icmp eq i32 %49, 0
  %and24 = and i32 %conv18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %lor.lhs.false.if.end45_crit_edge, label %lor.lhs.false.if.then26_crit_edge

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %if.end17.if.then26_crit_edge
  %50 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv1, align 4
  call void @lbs_host_to_card_done(ptr noundef %51) #8
  %buffer_lock = getelementptr i8, ptr %work, i32 2504
  %call33 = call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock) #8
  %cmd_packet_list = getelementptr i8, ptr %work, i32 2488
  %52 = ptrtoint ptr %cmd_packet_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %cmd_packet_list, align 4
  %cmp.i128.not = icmp eq ptr %53, %cmd_packet_list
  br i1 %cmp.i128.not, label %if.end40.thread, label %if.then38

if.end40.thread:                                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock, i32 noundef %call33) #8
  br label %if.end45

if.then38:                                        ; preds = %if.then26
  %call.i.i130 = call zeroext i1 @__list_del_entry_valid(ptr noundef %53) #8
  br i1 %call.i.i130, label %if.end.i.i, label %if.then38.if.end40_crit_edge

if.then38.if.end40_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end.i.i:                                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end.i.i, %if.then38.if.end40_crit_edge
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %53, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock, i32 noundef %call33) #8
  %tobool42.not = icmp eq ptr %53, null
  br i1 %tobool42.not, label %if.end40.if.end45_crit_edge, label %if.then43

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  %62 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv1, align 4
  %buffer.i = getelementptr inbounds %struct.if_spi_packet, ptr %53, i32 0, i32 3
  %blen.i = getelementptr inbounds %struct.if_spi_packet, ptr %53, i32 0, i32 1
  %64 = ptrtoint ptr %blen.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %blen.i, align 4
  %conv.i132 = zext i16 %65 to i32
  %call.i133 = call fastcc i32 @spu_write(ptr noundef %add.ptr, i16 noundef zeroext 24, ptr noundef %buffer.i, i32 noundef %conv.i132) #8
  call void @kfree(ptr noundef nonnull %53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool3.not.i = icmp eq i32 %call.i133, 0
  br i1 %tobool3.not.i, label %if.then43.if.end45_crit_edge, label %if.then4.i

if.then43.if.end45_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then4.i:                                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.if_spi_h2c, i32 noundef %call.i133) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then4.i, %if.then43.if.end45_crit_edge, %if.end40.if.end45_crit_edge, %if.end40.thread, %lor.lhs.false.if.end45_crit_edge
  %68 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool48.not = icmp eq i16 %68, 0
  br i1 %tobool48.not, label %if.end45.if.end75_crit_edge, label %if.then49

if.end45.if.end75_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then49:                                        ; preds = %if.end45
  %buffer_lock57 = getelementptr i8, ptr %work, i32 2504
  %call59 = call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_lock57) #8
  %data_packet_list = getelementptr i8, ptr %work, i32 2496
  %69 = ptrtoint ptr %data_packet_list to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %data_packet_list, align 4
  %cmp.i135.not = icmp eq ptr %70, %data_packet_list
  br i1 %cmp.i135.not, label %if.end70.thread, label %if.then66

if.end70.thread:                                  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock57, i32 noundef %call59) #8
  br label %if.end75

if.then66:                                        ; preds = %if.then49
  %call.i.i137 = call zeroext i1 @__list_del_entry_valid(ptr noundef %70) #8
  br i1 %call.i.i137, label %if.end.i.i140, label %if.then66.if.end70_crit_edge

if.then66.if.end70_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end.i.i140:                                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i138 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i138 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i138, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %70, align 4
  %prev1.i.i.i139 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i139, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end.i.i140, %if.then66.if.end70_crit_edge
  %77 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 256 to ptr), ptr %70, align 4
  %prev.i141 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i141 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i141, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_lock57, i32 noundef %call59) #8
  %tobool72.not = icmp eq ptr %70, null
  br i1 %tobool72.not, label %if.end70.if.end75_crit_edge, label %if.then73

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then73:                                        ; preds = %if.end70
  %79 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv1, align 4
  %buffer.i144 = getelementptr inbounds %struct.if_spi_packet, ptr %70, i32 0, i32 3
  %blen.i145 = getelementptr inbounds %struct.if_spi_packet, ptr %70, i32 0, i32 1
  %81 = ptrtoint ptr %blen.i145 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %blen.i145, align 4
  %conv.i146 = zext i16 %82 to i32
  %call.i147 = call fastcc i32 @spu_write(ptr noundef %add.ptr, i16 noundef zeroext 36, ptr noundef %buffer.i144, i32 noundef %conv.i146) #8
  call void @kfree(ptr noundef nonnull %70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool3.not.i148 = icmp eq i32 %call.i147, 0
  br i1 %tobool3.not.i148, label %if.then73.if.end75_crit_edge, label %if.then4.i150

if.then73.if.end75_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then4.i150:                                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %80, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %84, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.if_spi_h2c, i32 noundef %call.i147) #11
  br label %if.end75

if.end75:                                         ; preds = %if.then4.i150, %if.then73.if.end75_crit_edge, %if.end70.if.end75_crit_edge, %if.end70.thread, %if.end45.if.end75_crit_edge
  %85 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool78.not = icmp eq i16 %85, 0
  br i1 %tobool78.not, label %if.end75.if.end85_crit_edge, label %if.then79

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then79:                                        ; preds = %if.end75
  %86 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i152) #8
  %88 = ptrtoint ptr %buf.i.i152 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %buf.i.i152, align 4, !annotation !197
  %call.i.i154 = call fastcc i32 @spu_read(ptr noundef %add.ptr, i16 noundef zeroext 48, ptr noundef nonnull %buf.i.i152, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i154)
  %tobool.not.i.i = icmp eq i32 %call.i.i154, 0
  br i1 %tobool.not.i.i, label %if.end.i155, label %if.then5.critedge.i

if.end.i155:                                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %buf.i.i152 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %buf.i.i152, align 4
  %91 = lshr i32 %90, 24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i152) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i.i) #8
  %92 = ptrtoint ptr %buff.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -2049, ptr %buff.i.i, align 2
  %call.i13.i = call fastcc i32 @spu_write(ptr noundef %add.ptr, i16 noundef zeroext 92, ptr noundef nonnull %buff.i.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i14.i) #8
  %93 = ptrtoint ptr %buff.i14.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 2048, ptr %buff.i14.i, align 2
  %call.i15.i = call fastcc i32 @spu_write(ptr noundef %add.ptr, i16 noundef zeroext 68, ptr noundef nonnull %buff.i14.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i14.i) #8
  call void @lbs_queue_event(ptr noundef %87, i32 noundef %91) #8
  br label %if.end85

if.then5.critedge.i:                              ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i152) #8
  %94 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %87, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %95, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.if_spi_e2h, i32 noundef %call.i.i154) #11
  br label %if.end85

if.then83:                                        ; preds = %if_spi_c2h_data.exit, %if_spi_c2h_cmd.exit, %if.then
  %err.2 = phi i32 [ %call.i, %if.then ], [ %err.0.ph.i, %if_spi_c2h_cmd.exit ], [ %err.046.i, %if_spi_c2h_data.exit ]
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %97, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.if_spi_host_to_card_worker, i32 noundef %err.2) #11
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.then5.critedge.i, %if.end.i155, %if.end75.if.end85_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_spi_resume_worker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -80
  %suspended = getelementptr i8, ptr %work, i32 2504
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %pdata = getelementptr i8, ptr %work, i32 -72
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %setup = getelementptr inbounds %struct.libertas_spi_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setup, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 %5(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %call5 = tail call fastcc i32 @if_spi_init_card(ptr noundef %add.ptr)
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %11) #8
  %priv = getelementptr i8, ptr %work, i32 -76
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %call7 = tail call i32 @lbs_resume(ptr noundef %13) #8
  %14 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %suspended, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_spi_host_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %workqueue = getelementptr inbounds %struct.if_spi_card, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workqueue, align 4
  %packet_work = getelementptr inbounds %struct.if_spi_card, ptr %dev_id, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %packet_work) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_start_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_remove_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_if_spi_card(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_packet_list = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 13
  %0 = ptrtoint ptr %cmd_packet_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_packet_list, align 4
  %cmp.i.not44 = icmp eq ptr %1, %cmd_packet_list
  br i1 %cmp.i.not44, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %cursor.045 = phi ptr [ %next.047, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %cursor.045 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.047 = load ptr, ptr %cursor.045, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cursor.045) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cursor.045, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %cursor.045 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cursor.045, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %cursor.045 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %cursor.045, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cursor.045, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %cursor.045) #8
  %cmp.i.not = icmp eq ptr %next.047, %cmd_packet_list
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %data_packet_list = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 14
  %11 = ptrtoint ptr %data_packet_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_packet_list, align 4
  %cmp.i35.not49 = icmp eq ptr %12, %data_packet_list
  br i1 %cmp.i35.not49, label %for.end.for.end19_crit_edge, label %for.end.for.body12_crit_edge

for.end.for.body12_crit_edge:                     ; preds = %for.end
  br label %for.body12

for.end.for.end19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19

for.body12:                                       ; preds = %list_del.exit42.for.body12_crit_edge, %for.end.for.body12_crit_edge
  %cursor.150 = phi ptr [ %next.152, %list_del.exit42.for.body12_crit_edge ], [ %12, %for.end.for.body12_crit_edge ]
  %13 = ptrtoint ptr %cursor.150 to i32
  call void @__asan_load4_noabort(i32 %13)
  %next.152 = load ptr, ptr %cursor.150, align 4
  %call.i.i37 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cursor.150) #8
  br i1 %call.i.i37, label %if.end.i.i40, label %for.body12.list_del.exit42_crit_edge

for.body12.list_del.exit42_crit_edge:             ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit42

if.end.i.i40:                                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i38 = getelementptr inbounds %struct.list_head, ptr %cursor.150, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i38, align 4
  %16 = ptrtoint ptr %cursor.150 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cursor.150, align 4
  %prev1.i.i.i39 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i39, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit42

list_del.exit42:                                  ; preds = %if.end.i.i40, %for.body12.list_del.exit42_crit_edge
  %20 = ptrtoint ptr %cursor.150 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %cursor.150, align 4
  %prev.i41 = getelementptr inbounds %struct.list_head, ptr %cursor.150, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i41, align 4
  tail call void @kfree(ptr noundef %cursor.150) #8
  %cmp.i35.not = icmp eq ptr %next.152, %data_packet_list
  br i1 %cmp.i35.not, label %list_del.exit42.for.end19_crit_edge, label %list_del.exit42.for.body12_crit_edge

list_del.exit42.for.body12_crit_edge:             ; preds = %list_del.exit42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12

list_del.exit42.for.end19_crit_edge:              ; preds = %list_del.exit42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19

for.end19:                                        ; preds = %list_del.exit42.for.end19_crit_edge, %for.end.for.end19_crit_edge
  tail call void @kfree(ptr noundef %card) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_get_firmware(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @if_spi_prog_main_firmware(ptr noundef %card, ptr nocapture noundef readonly %firmware) unnamed_addr #2 align 64 {
entry:
  %buf.i.i116 = alloca i32, align 4
  %buff.i114 = alloca i16, align 2
  %buff.i = alloca i16, align 2
  %buf.i.i107 = alloca i16, align 2
  %buf.i.i.i = alloca i16, align 2
  %buf.i.i = alloca i16, align 2
  %buff.i35.i = alloca i16, align 2
  %buff.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i.i) #8
  %2 = ptrtoint ptr %buff.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %buff.i.i, align 2
  %call.i.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 100, ptr noundef nonnull %buff.i.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end7.i, label %entry.do.end67_crit_edge

entry.do.end67_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.end7.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i35.i) #8
  %3 = ptrtoint ptr %buff.i35.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %buff.i35.i, align 2
  %call.i36.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 100, ptr noundef nonnull %buff.i35.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i35.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool16.not.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool16.not.i, label %if.end, label %if.end7.i.do.end67_crit_edge

if.end7.i.do.end67_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.end:                                           ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %4, 500
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end11.i.while.cond.i_crit_edge, %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %buf.i.i, align 2, !annotation !197
  %call.i.i106 = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 40, ptr noundef nonnull %buf.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106)
  %cmp.i.i = icmp eq i32 %call.i.i106, 0
  br i1 %cmp.i.i, label %if.end.i, label %spu_read_u16.exit.i

spu_read_u16.exit.i:                              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %if.then4

if.end.i:                                         ; preds = %while.cond.i
  %6 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buf.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not.i = icmp eq i16 %7, 0
  br i1 %tobool8.not.i, label %if.end11.i, label %if.end5

if.end11.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 21474800) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %9
  %cmp12.i = icmp slt i32 %sub.i, 0
  br i1 %cmp12.i, label %do.end.i, label %if.end11.i.while.cond.i_crit_edge

if.end11.i.while.cond.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %if.then4

if.then4:                                         ; preds = %do.end.i, %spu_read_u16.exit.i
  %retval.1.ph.i.ph = phi i32 [ -110, %do.end.i ], [ %call.i.i106, %spu_read_u16.exit.i ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.if_spi_prog_main_firmware) #11
  br label %do.end67

if.end5:                                          ; preds = %if.end.i
  %12 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %firmware, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %firmware, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %cmd_buffer28 = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 12
  br label %while.cond

while.cond:                                       ; preds = %if.end40.while.cond_crit_edge, %if.end5
  %crc_err.0 = phi i32 [ 0, %if.end5 ], [ %crc_err.1127133, %if.end40.while.cond_crit_edge ]
  %fw.0 = phi ptr [ %15, %if.end5 ], [ %fw.1, %if.end40.while.cond_crit_edge ]
  %num_crc_errs.0 = phi i16 [ 0, %if.end5 ], [ %num_crc_errs.1, %if.end40.while.cond_crit_edge ]
  %bytes.0 = phi i32 [ %13, %if.end5 ], [ %bytes.1, %if.end40.while.cond_crit_edge ]
  %prev_len.0 = phi i32 [ 0, %if.end5 ], [ %retval.0.i113128132, %if.end40.while.cond_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %16, 500
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end11.i.i.while.cond.i.i_crit_edge, %while.cond
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #8
  %17 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %buf.i.i.i, align 2, !annotation !197
  %call.i.i.i = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 92, ptr noundef nonnull %buf.i.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i, label %spu_read_u16.exit.i.i

spu_read_u16.exit.i.i:                            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #8
  br label %do.end.i108

if.end.i.i:                                       ; preds = %while.cond.i.i
  %18 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %buf.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #8
  %20 = call i16 @llvm.bswap.i16(i16 %19) #8
  %and26.i.i = and i16 %20, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and26.i.i)
  %cmp.i.not.i = icmp eq i16 %and26.i.i, 0
  br i1 %cmp.i.not.i, label %if.end11.i.i, label %if.end.i110

if.end11.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 21474800) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %22
  %cmp12.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp12.i.i, label %do.end.i.i, label %if.end11.i.i.while.cond.i.i_crit_edge

if.end11.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

do.end.i.i:                                       ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv15.i.i = zext i16 %20 to i32
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %conv15.i.i, i32 noundef 4, i32 noundef 4) #11
  br label %do.end.i108

do.end.i108:                                      ; preds = %do.end.i.i, %spu_read_u16.exit.i.i
  %retval.1.ph.i.ph.i = phi i32 [ -110, %do.end.i.i ], [ %call.i.i.i, %spu_read_u16.exit.i.i ]
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #11
  br label %while.body

if.end.i110:                                      ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i107) #8
  %23 = ptrtoint ptr %buf.i.i107 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %buf.i.i107, align 2, !annotation !197
  %call.i.i109 = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 40, ptr noundef nonnull %buf.i.i107, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %cmp.i42.i = icmp eq i32 %call.i.i109, 0
  br i1 %cmp.i42.i, label %if.end5.i, label %spu_read_u16.exit.i111

spu_read_u16.exit.i111:                           ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i107) #8
  br label %while.body

if.end5.i:                                        ; preds = %if.end.i110
  %24 = ptrtoint ptr %buf.i.i107 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %buf.i.i107, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i107) #8
  %conv.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2400, i16 %26)
  %cmp.i = icmp ugt i16 %26, 2400
  br i1 %cmp.i, label %while.body.thread134, label %if.end14.i

while.body.thread134:                             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %conv.i) #11
  br label %do.end67

if.end14.i:                                       ; preds = %if.end5.i
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i112 = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i112, label %if.end14.i.if_spi_prog_main_firmware_check_len.exit_crit_edge, label %do.body18.i

if.end14.i.if_spi_prog_main_firmware_check_len.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if_spi_prog_main_firmware_check_len.exit

do.body18.i:                                      ; preds = %if.end14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %27 = load i32, ptr @lbs_debug, align 4
  %and19.i = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %cmp20.not.i = icmp eq i32 %and19.i, 0
  br i1 %cmp20.not.i, label %do.body18.i.do.end30.i_crit_edge, label %do.end25.i

do.body18.i.do.end30.i_crit_edge:                 ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i

do.end25.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.52) #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end25.i, %do.body18.i.do.end30.i_crit_edge
  %28 = and i16 %26, -2
  %.pre.i = zext i16 %28 to i32
  br label %if_spi_prog_main_firmware_check_len.exit

if_spi_prog_main_firmware_check_len.exit:         ; preds = %do.end30.i, %if.end14.i.if_spi_prog_main_firmware_check_len.exit_crit_edge
  %crc_err.1 = phi i32 [ 0, %if.end14.i.if_spi_prog_main_firmware_check_len.exit_crit_edge ], [ 1, %do.end30.i ]
  %retval.0.i113 = phi i32 [ %conv.i, %if.end14.i.if_spi_prog_main_firmware_check_len.exit_crit_edge ], [ %.pre.i, %do.end30.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i113)
  %tobool7.not = icmp eq i32 %retval.0.i113, 0
  br i1 %tobool7.not, label %if_spi_prog_main_firmware_check_len.exit.while.end_crit_edge, label %if_spi_prog_main_firmware_check_len.exit.if.end9_crit_edge

if_spi_prog_main_firmware_check_len.exit.if.end9_crit_edge: ; preds = %if_spi_prog_main_firmware_check_len.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if_spi_prog_main_firmware_check_len.exit.while.end_crit_edge: ; preds = %if_spi_prog_main_firmware_check_len.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %spu_read_u16.exit.i111, %do.end.i108
  %retval.0.i113.ph = phi i32 [ %call.i.i109, %spu_read_u16.exit.i111 ], [ %retval.1.ph.i.ph.i, %do.end.i108 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i113.ph)
  %cmp = icmp slt i32 %retval.0.i113.ph, 0
  br i1 %cmp, label %while.body.do.end67_crit_edge, label %while.body.if.end9_crit_edge

while.body.if.end9_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

while.body.do.end67_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.end9:                                          ; preds = %while.body.if.end9_crit_edge, %if_spi_prog_main_firmware_check_len.exit.if.end9_crit_edge
  %crc_err.1127133 = phi i32 [ %crc_err.0, %while.body.if.end9_crit_edge ], [ %crc_err.1, %if_spi_prog_main_firmware_check_len.exit.if.end9_crit_edge ]
  %retval.0.i113128132 = phi i32 [ %retval.0.i113.ph, %while.body.if.end9_crit_edge ], [ %retval.0.i113, %if_spi_prog_main_firmware_check_len.exit.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.0)
  %cmp10 = icmp slt i32 %bytes.0, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.40) #11
  br label %while.end

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crc_err.1127133)
  %tobool14.not = icmp eq i32 %crc_err.1127133, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  %inc = add i16 %num_crc_errs.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %inc)
  %cmp16 = icmp ugt i16 %inc, 10
  br i1 %cmp16, label %do.end, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #11
  br label %do.end67

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %bytes.0, %prev_len.0
  %add.ptr = getelementptr i8, ptr %fw.0, i32 %prev_len.0
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15.if.end21_crit_edge
  %fw.1 = phi ptr [ %fw.0, %if.then15.if.end21_crit_edge ], [ %add.ptr, %if.else ]
  %num_crc_errs.1 = phi i16 [ %inc, %if.then15.if.end21_crit_edge ], [ %num_crc_errs.0, %if.else ]
  %bytes.1 = phi i32 [ %bytes.0, %if.then15.if.end21_crit_edge ], [ %sub, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.1, i32 %retval.0.i113128132)
  %cmp22 = icmp slt i32 %bytes.1, %retval.0.i113128132
  br i1 %cmp22, label %if.then24, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %31 = call ptr @memset(ptr %cmd_buffer28, i32 0, i32 %retval.0.i113128132)
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end21.if.end30_crit_edge
  %retval.0.i113128132.sink = phi i32 [ %bytes.1, %if.then24 ], [ %retval.0.i113128132, %if.end21.if.end30_crit_edge ]
  %32 = call ptr @memcpy(ptr %cmd_buffer28, ptr %fw.1, i32 %retval.0.i113128132.sink)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i) #8
  %33 = ptrtoint ptr %buff.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %buff.i, align 2
  %call.i = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 92, ptr noundef nonnull %buff.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.do.end67_crit_edge

if.end30.do.end67_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.end34:                                         ; preds = %if.end30
  %call37 = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 24, ptr noundef %cmd_buffer28, i32 noundef %retval.0.i113128132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.do.end67_crit_edge

if.end34.do.end67_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.end40:                                         ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff.i114) #8
  %34 = ptrtoint ptr %buff.i114 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1024, ptr %buff.i114, align 2
  %call.i115 = call fastcc i32 @spu_write(ptr noundef %card, i16 noundef zeroext 68, ptr noundef nonnull %buff.i114, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff.i114) #8
  %tobool42.not = icmp eq i32 %call.i115, 0
  br i1 %tobool42.not, label %if.end40.while.cond_crit_edge, label %if.end40.do.end67_crit_edge

if.end40.do.end67_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.end40.while.cond_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %if.then11, %if_spi_prog_main_firmware_check_len.exit.while.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.0, i32 %prev_len.0)
  %cmp45 = icmp sgt i32 %bytes.0, %prev_len.0
  br i1 %cmp45, label %do.end50, label %while.end.if.end53_crit_edge

while.end.if.end53_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.end50:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %while.end.if.end53_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i116) #8
  %35 = ptrtoint ptr %buf.i.i116 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %buf.i.i116, align 4, !annotation !197
  %call.i.i117 = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 52, ptr noundef nonnull %buf.i.i116, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117)
  %tobool.not.i.i = icmp eq i32 %call.i.i117, 0
  br i1 %tobool.not.i.i, label %if.end.i118, label %if.end53.spu_read_u32.exit.i_crit_edge

if.end53.spu_read_u32.exit.i_crit_edge:           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %spu_read_u32.exit.i

spu_read_u32.exit.i:                              ; preds = %for.inc.2.i.spu_read_u32.exit.i_crit_edge, %for.inc.1.i.spu_read_u32.exit.i_crit_edge, %for.inc.i.spu_read_u32.exit.i_crit_edge, %if.end53.spu_read_u32.exit.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i.i117, %if.end53.spu_read_u32.exit.i_crit_edge ], [ %call.i.1.i, %for.inc.i.spu_read_u32.exit.i_crit_edge ], [ %call.i.2.i, %for.inc.1.i.spu_read_u32.exit.i_crit_edge ], [ %call.i.3.i, %for.inc.2.i.spu_read_u32.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i116) #8
  br label %do.end59

if.end.i118:                                      ; preds = %if.end53
  %36 = ptrtoint ptr %buf.i.i116 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf.i.i116, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i116) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2004318072, i32 %37)
  %cmp1.i = icmp eq i32 %37, -2004318072
  br i1 %cmp1.i, label %if.end.i118.if.end70_crit_edge, label %if.end.i118.while.body.i_crit_edge

if.end.i118.while.body.i_crit_edge:               ; preds = %if.end.i118
  br label %while.body.i

if.end.i118.if.end70_crit_edge:                   ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i118.while.body.i_crit_edge
  %__ms.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 100, %if.end.i118.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.05.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #8
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %for.inc.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

for.inc.i:                                        ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i116) #8
  %39 = ptrtoint ptr %buf.i.i116 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %buf.i.i116, align 4, !annotation !197
  %call.i.1.i = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 52, ptr noundef nonnull %buf.i.i116, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.end.1.i, label %for.inc.i.spu_read_u32.exit.i_crit_edge

for.inc.i.spu_read_u32.exit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spu_read_u32.exit.i

if.end.1.i:                                       ; preds = %for.inc.i
  %40 = ptrtoint ptr %buf.i.i116 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf.i.i116, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i116) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2004318072, i32 %41)
  %cmp1.1.i = icmp eq i32 %41, -2004318072
  br i1 %cmp1.1.i, label %if.end.1.i.if.end70_crit_edge, label %if.end.1.i.while.body.1.i_crit_edge

if.end.1.i.while.body.1.i_crit_edge:              ; preds = %if.end.1.i
  br label %while.body.1.i

if.end.1.i.if.end70_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

while.body.1.i:                                   ; preds = %while.body.1.i.while.body.1.i_crit_edge, %if.end.1.i.while.body.1.i_crit_edge
  %__ms.05.1.i = phi i32 [ %dec.1.i, %while.body.1.i.while.body.1.i_crit_edge ], [ 100, %if.end.1.i.while.body.1.i_crit_edge ]
  %dec.1.i = add nsw i32 %__ms.05.1.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748000) #8
  %tobool5.not.1.i = icmp eq i32 %dec.1.i, 0
  br i1 %tobool5.not.1.i, label %for.inc.1.i, label %while.body.1.i.while.body.1.i_crit_edge

while.body.1.i.while.body.1.i_crit_edge:          ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.1.i

for.inc.1.i:                                      ; preds = %while.body.1.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i116) #8
  %43 = ptrtoint ptr %buf.i.i116 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %buf.i.i116, align 4, !annotation !197
  %call.i.2.i = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 52, ptr noundef nonnull %buf.i.i116, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %if.end.2.i, label %for.inc.1.i.spu_read_u32.exit.i_crit_edge

for.inc.1.i.spu_read_u32.exit.i_crit_edge:        ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spu_read_u32.exit.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %44 = ptrtoint ptr %buf.i.i116 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf.i.i116, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i116) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2004318072, i32 %45)
  %cmp1.2.i = icmp eq i32 %45, -2004318072
  br i1 %cmp1.2.i, label %if.end.2.i.if.end70_crit_edge, label %if.end.2.i.while.body.2.i_crit_edge

if.end.2.i.while.body.2.i_crit_edge:              ; preds = %if.end.2.i
  br label %while.body.2.i

if.end.2.i.if.end70_crit_edge:                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

while.body.2.i:                                   ; preds = %while.body.2.i.while.body.2.i_crit_edge, %if.end.2.i.while.body.2.i_crit_edge
  %__ms.05.2.i = phi i32 [ %dec.2.i, %while.body.2.i.while.body.2.i_crit_edge ], [ 100, %if.end.2.i.while.body.2.i_crit_edge ]
  %dec.2.i = add nsw i32 %__ms.05.2.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #8
  %tobool5.not.2.i = icmp eq i32 %dec.2.i, 0
  br i1 %tobool5.not.2.i, label %for.inc.2.i, label %while.body.2.i.while.body.2.i_crit_edge

while.body.2.i.while.body.2.i_crit_edge:          ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.2.i

for.inc.2.i:                                      ; preds = %while.body.2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i116) #8
  %47 = ptrtoint ptr %buf.i.i116 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %buf.i.i116, align 4, !annotation !197
  %call.i.3.i = call fastcc i32 @spu_read(ptr noundef %card, i16 noundef zeroext 52, ptr noundef nonnull %buf.i.i116, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %call.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %if.end.3.i, label %for.inc.2.i.spu_read_u32.exit.i_crit_edge

for.inc.2.i.spu_read_u32.exit.i_crit_edge:        ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spu_read_u32.exit.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  %48 = ptrtoint ptr %buf.i.i116 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buf.i.i116, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i116) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2004318072, i32 %49)
  %cmp1.3.i = icmp eq i32 %49, -2004318072
  br i1 %cmp1.3.i, label %if.end.3.i.if.end70_crit_edge, label %if.end.3.i.while.body.3.i_crit_edge

if.end.3.i.while.body.3.i_crit_edge:              ; preds = %if.end.3.i
  br label %while.body.3.i

if.end.3.i.if.end70_crit_edge:                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

while.body.3.i:                                   ; preds = %while.body.3.i.while.body.3.i_crit_edge, %if.end.3.i.while.body.3.i_crit_edge
  %__ms.05.3.i = phi i32 [ %dec.3.i, %while.body.3.i.while.body.3.i_crit_edge ], [ 100, %if.end.3.i.while.body.3.i_crit_edge ]
  %dec.3.i = add nsw i32 %__ms.05.3.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #8
  %tobool5.not.3.i = icmp eq i32 %dec.3.i, 0
  br i1 %tobool5.not.3.i, label %while.body.3.i.do.end59_crit_edge, label %while.body.3.i.while.body.3.i_crit_edge

while.body.3.i.while.body.3.i_crit_edge:          ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.3.i

while.body.3.i.do.end59_crit_edge:                ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

do.end59:                                         ; preds = %while.body.3.i.do.end59_crit_edge, %spu_read_u32.exit.i
  %retval.2.i = phi i32 [ %call.i.lcssa.i, %spu_read_u32.exit.i ], [ -110, %while.body.3.i.do.end59_crit_edge ]
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #11
  br label %do.end67

do.end67:                                         ; preds = %do.end59, %if.end40.do.end67_crit_edge, %if.end34.do.end67_crit_edge, %if.end30.do.end67_crit_edge, %do.end, %while.body.do.end67_crit_edge, %while.body.thread134, %if.then4, %if.end7.i.do.end67_crit_edge, %entry.do.end67_crit_edge
  %err.0.ph = phi i32 [ -5, %while.body.thread134 ], [ -5, %do.end ], [ %retval.2.i, %do.end59 ], [ %retval.1.ph.i.ph, %if.then4 ], [ %call.i36.i, %if.end7.i.do.end67_crit_edge ], [ %call.i.i, %entry.do.end67_crit_edge ], [ %call.i, %if.end30.do.end67_crit_edge ], [ %call37, %if.end34.do.end67_crit_edge ], [ %call.i115, %if.end40.do.end67_crit_edge ], [ %retval.0.i113.ph, %while.body.do.end67_crit_edge ]
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %err.0.ph) #11
  br label %if.end70

if.end70:                                         ; preds = %do.end67, %if.end.3.i.if.end70_crit_edge, %if.end.2.i.if.end70_crit_edge, %if.end.1.i.if.end70_crit_edge, %if.end.i118.if.end70_crit_edge
  %err.0142 = phi i32 [ %err.0.ph, %do.end67 ], [ 0, %if.end.i118.if.end70_crit_edge ], [ 0, %if.end.1.i.if.end70_crit_edge ], [ 0, %if.end.2.i.if.end70_crit_edge ], [ 0, %if.end.3.i.if.end70_crit_edge ]
  ret i32 %err.0142
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spu_write(ptr nocapture noundef %card, i16 noundef zeroext %reg, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %reg_out = alloca i16, align 2
  %m = alloca %struct.spi_message, align 4
  %reg_trans = alloca %struct.spi_transfer, align 4
  %data_trans = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_out) #8
  %0 = or i16 %reg, -32768
  %1 = tail call i16 @llvm.bswap.i16(i16 %0)
  %2 = ptrtoint ptr %reg_out to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %reg_out, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %reg_trans) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %data_trans) #8
  %3 = getelementptr inbounds i8, ptr %m, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %7 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %9 = getelementptr inbounds i8, ptr %reg_trans, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = getelementptr inbounds i8, ptr %data_trans, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 92)
  %and = and i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end9, label %do.body4, !prof !198

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/if_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #8, !srcloc !200
  unreachable

do.end9:                                          ; preds = %entry
  %prev_xfer_time.i = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 5
  %13 = ptrtoint ptr %prev_xfer_time.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prev_xfer_time.i, align 4
  %add.i = add i32 %14, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end9.spu_transaction_init.exit_crit_edge, label %if.then.i

do.end9.spu_transaction_init.exit_crit_edge:      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %spu_transaction_init.exit

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748) #8
  br label %spu_transaction_init.exit

spu_transaction_init.exit:                        ; preds = %if.then.i, %do.end9.spu_transaction_init.exit_crit_edge
  %17 = ptrtoint ptr %reg_trans to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reg_out, ptr %reg_trans, align 4
  %len10 = getelementptr inbounds %struct.spi_transfer, ptr %reg_trans, i32 0, i32 2
  %18 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %len10, align 4
  %19 = ptrtoint ptr %data_trans to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf, ptr %data_trans, align 4
  %len12 = getelementptr inbounds %struct.spi_transfer, ptr %data_trans, i32 0, i32 2
  %20 = ptrtoint ptr %len12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %len, ptr %len12, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %reg_trans, i32 0, i32 18
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %22, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %spu_transaction_init.exit.spi_message_add_tail.exit_crit_edge

spu_transaction_init.exit.spi_message_add_tail.exit_crit_edge: ; preds = %spu_transaction_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %spu_transaction_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %reg_trans, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i, ptr %22, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %spu_transaction_init.exit.spi_message_add_tail.exit_crit_edge
  %transfer_list.i16 = getelementptr inbounds %struct.spi_transfer, ptr %data_trans, i32 0, i32 18
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i18 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i16, ptr noundef %28, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i18, label %if.end.i.i.i20, label %spi_message_add_tail.exit.spi_message_add_tail.exit21_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit21_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit21

if.end.i.i.i20:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i16, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %m, ptr %transfer_list.i16, align 4
  %prev3.i.i.i19 = getelementptr inbounds %struct.spi_transfer, ptr %data_trans, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i19, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i16, ptr %28, align 4
  br label %spi_message_add_tail.exit21

spi_message_add_tail.exit21:                      ; preds = %if.end.i.i.i20, %spi_message_add_tail.exit.spi_message_add_tail.exit21_crit_edge
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 4
  %call = call i32 @spi_sync(ptr noundef %34, ptr noundef nonnull %m) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %36 = ptrtoint ptr %prev_xfer_time.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %prev_xfer_time.i, align 4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %data_trans) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %reg_trans) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_out) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spu_read(ptr nocapture noundef %card, i16 noundef zeroext %reg, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %reg_out = alloca i16, align 2
  %m = alloca %struct.spi_message, align 4
  %reg_trans = alloca %struct.spi_transfer, align 4
  %dummy_trans = alloca %struct.spi_transfer, align 4
  %data_trans = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_out) #8
  %0 = tail call i16 @llvm.bswap.i16(i16 %reg)
  %1 = ptrtoint ptr %reg_out to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %reg_out, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %reg_trans) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %dummy_trans) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %data_trans) #8
  %and = and i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end9, label %do.body4, !prof !198

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/if_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #8, !srcloc !201
  unreachable

do.end9:                                          ; preds = %entry
  %prev_xfer_time.i = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 5
  %2 = ptrtoint ptr %prev_xfer_time.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prev_xfer_time.i, align 4
  %add.i = add i32 %3, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end9.spu_transaction_init.exit_crit_edge, label %if.then.i

do.end9.spu_transaction_init.exit_crit_edge:      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %spu_transaction_init.exit

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #8
  br label %spu_transaction_init.exit

spu_transaction_init.exit:                        ; preds = %if.then.i, %do.end9.spu_transaction_init.exit_crit_edge
  %6 = getelementptr inbounds i8, ptr %m, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %12 = getelementptr inbounds i8, ptr %reg_trans, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 92)
  %14 = call ptr @memset(ptr %dummy_trans, i32 0, i32 96)
  %15 = call ptr @memset(ptr %data_trans, i32 0, i32 96)
  %16 = ptrtoint ptr %reg_trans to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reg_out, ptr %reg_trans, align 4
  %len10 = getelementptr inbounds %struct.spi_transfer, ptr %reg_trans, i32 0, i32 2
  %17 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %len10, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %reg_trans, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %spu_transaction_init.exit.spi_message_add_tail.exit_crit_edge

spu_transaction_init.exit.spi_message_add_tail.exit_crit_edge: ; preds = %spu_transaction_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %spu_transaction_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %reg_trans, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %spu_transaction_init.exit.spi_message_add_tail.exit_crit_edge
  %22 = zext i16 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %reg, label %23 [
    i16 12, label %spi_message_add_tail.exit.spu_reg_is_port_reg.exit_crit_edge
    i16 24, label %spi_message_add_tail.exit.spu_reg_is_port_reg.exit_crit_edge50
    i16 36, label %spi_message_add_tail.exit.spu_reg_is_port_reg.exit_crit_edge51
  ]

spi_message_add_tail.exit.spu_reg_is_port_reg.exit_crit_edge51: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spu_reg_is_port_reg.exit

spi_message_add_tail.exit.spu_reg_is_port_reg.exit_crit_edge50: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spu_reg_is_port_reg.exit

spi_message_add_tail.exit.spu_reg_is_port_reg.exit_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spu_reg_is_port_reg.exit

spu_reg_is_port_reg.exit:                         ; preds = %spi_message_add_tail.exit.spu_reg_is_port_reg.exit_crit_edge, %spi_message_add_tail.exit.spu_reg_is_port_reg.exit_crit_edge50, %spi_message_add_tail.exit.spu_reg_is_port_reg.exit_crit_edge51
  %spu_port_delay = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 7
  br label %24

23:                                               ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %spu_reg_delay48 = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 8
  br label %24

24:                                               ; preds = %23, %spu_reg_is_port_reg.exit
  %25 = phi ptr [ %spu_reg_delay48, %23 ], [ %spu_port_delay, %spu_reg_is_port_reg.exit ]
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %cond = load i32, ptr %25, align 4
  %use_dummy_writes = getelementptr inbounds %struct.if_spi_card, ptr %card, i32 0, i32 6
  %27 = ptrtoint ptr %use_dummy_writes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %use_dummy_writes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.not = icmp eq i32 %28, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %24
  %div31 = lshr i32 %cond, 3
  %len14 = getelementptr inbounds %struct.spi_transfer, ptr %dummy_trans, i32 0, i32 2
  %29 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div31, ptr %len14, align 4
  %transfer_list.i32 = getelementptr inbounds %struct.spi_transfer, ptr %dummy_trans, i32 0, i32 18
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i34 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i32, ptr noundef %31, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i34, label %if.end.i.i.i36, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end.i.i.i36:                                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i32, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %m, ptr %transfer_list.i32, align 4
  %prev3.i.i.i35 = getelementptr inbounds %struct.spi_transfer, ptr %dummy_trans, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i35, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i32, ptr %31, align 4
  br label %if.end20

if.else:                                          ; preds = %24
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %cond, 10
  %sub = add i32 %mul, 1099
  %div16 = udiv i32 %sub, 1000
  %conv17 = trunc i32 %div16 to i16
  %delay18 = getelementptr inbounds %struct.spi_transfer, ptr %reg_trans, i32 0, i32 9
  %36 = ptrtoint ptr %delay18 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv17, ptr %delay18, align 2
  %unit = getelementptr inbounds %struct.spi_transfer, ptr %reg_trans, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %unit, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end.i.i.i36, %if.then13.if.end20_crit_edge
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %data_trans, i32 0, i32 1
  %38 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf, ptr %rx_buf, align 4
  %len21 = getelementptr inbounds %struct.spi_transfer, ptr %data_trans, i32 0, i32 2
  %39 = ptrtoint ptr %len21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %len, ptr %len21, align 4
  %transfer_list.i38 = getelementptr inbounds %struct.spi_transfer, ptr %data_trans, i32 0, i32 18
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i40 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i38, ptr noundef %41, ptr noundef nonnull %m) #8
  br i1 %call.i.i.i40, label %if.end.i.i.i42, label %if.end20.spi_message_add_tail.exit43_crit_edge

if.end20.spi_message_add_tail.exit43_crit_edge:   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit43

if.end.i.i.i42:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i38, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %transfer_list.i38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %m, ptr %transfer_list.i38, align 4
  %prev3.i.i.i41 = getelementptr inbounds %struct.spi_transfer, ptr %data_trans, i32 0, i32 18, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i41, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i38, ptr %41, align 4
  br label %spi_message_add_tail.exit43

spi_message_add_tail.exit43:                      ; preds = %if.end.i.i.i42, %if.end20.spi_message_add_tail.exit43_crit_edge
  %46 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card, align 4
  %call22 = call i32 @spi_sync(ptr noundef %47, ptr noundef nonnull %m) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %49 = ptrtoint ptr %prev_xfer_time.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %prev_xfer_time.i, align 4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %data_trans) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %dummy_trans) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %reg_trans) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_out) #8
  ret i32 %call22
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_host_to_card_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_notify_command_response(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_process_rxed_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_queue_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_stop_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_spi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %suspended = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %call2 = tail call i32 @lbs_suspend(ptr noundef %5) #8
  %workqueue = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %7) #8
  %irq = getelementptr inbounds %struct.spi_device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %9) #8
  %pdata = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 4
  %teardown = getelementptr inbounds %struct.libertas_spi_platform_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %teardown to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %teardown, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 %13(ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %14 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %suspended, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_spi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %resume_work = getelementptr inbounds %struct.if_spi_card, ptr %1, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %resume_work) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !115, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !179, !180, !181, !183, !185, !186, !187}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @__UNIQUE_ID_firmware341, !1, !"__UNIQUE_ID_firmware341", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 107, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware342, !3, !"__UNIQUE_ID_firmware342", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 108, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware343, !5, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 109, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware344, !7, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 110, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware345, !9, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 111, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware346, !11, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 112, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware347, !13, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 113, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware348, !15, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 114, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware349, !17, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 115, i32 1}
!18 = !{ptr @__initcall__kmod_libertas_spi__355_1281_if_spi_init_module6, !19, !"__initcall__kmod_libertas_spi__355_1281_if_spi_init_module6", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1281, i32 1}
!20 = !{ptr @__exitcall_if_spi_exit_module, !21, !"__exitcall_if_spi_exit_module", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1282, i32 1}
!22 = !{ptr @__UNIQUE_ID_description356, !23, !"__UNIQUE_ID_description356", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1284, i32 1}
!24 = !{ptr @__UNIQUE_ID_author357, !25, !"__UNIQUE_ID_author357", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1285, i32 1}
!26 = !{ptr @__UNIQUE_ID_file358, !27, !"__UNIQUE_ID_file358", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1287, i32 1}
!28 = !{ptr @__UNIQUE_ID_license359, !27, !"__UNIQUE_ID_license359", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_alias360, !30, !"__UNIQUE_ID_alias360", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1288, i32 1}
!31 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1257, i32 11}
!33 = !{ptr @libertas_spi_driver, !34, !"libertas_spi_driver", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1253, i32 26}
!35 = !{ptr @if_spi_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1126, i32 2}
!37 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @if_spi_probe.__key.2, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1159, i32 2}
!40 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @if_spi_probe.__key.4, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1160, i32 2}
!43 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1165, i32 3}
!46 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @if_spi_probe._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @if_spi_probe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1178, i32 2}
!52 = !{ptr @if_spi_probe._entry.9, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @if_spi_probe._entry_ptr.11, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1025, i32 3}
!56 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @if_spi_init_card._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @if_spi_init_card._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1034, i32 26}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1043, i32 26}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1048, i32 3}
!65 = !{ptr @if_spi_init_card._entry.16, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @if_spi_init_card._entry_ptr.18, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1062, i32 3}
!69 = !{ptr @if_spi_init_card._entry.19, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @if_spi_init_card._entry_ptr.21, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 448, i32 2}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @spu_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @spu_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 407, i32 3}
!78 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @spu_set_bus_mode._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @spu_set_bus_mode._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 100, i32 16}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 100, i32 48}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 101, i32 16}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 102, i32 16}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 102, i32 51}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 103, i32 16}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 103, i32 45}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 104, i32 16}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 104, i32 48}
!99 = !{ptr @fw_table, !100, !"fw_table", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 99, i32 34}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 530, i32 3}
!103 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @if_spi_prog_helper_firmware._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @if_spi_prog_helper_firmware._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 308, i32 4}
!108 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @spu_wait_for_u16._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @spu_wait_for_u16._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 593, i32 7}
!113 = !{ptr @__func__.if_spi_prog_main_firmware, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 594, i32 7}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 613, i32 8}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 619, i32 5}
!119 = !{ptr @if_spi_prog_main_firmware._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @if_spi_prog_main_firmware._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 648, i32 3}
!123 = !{ptr @if_spi_prog_main_firmware._entry.42, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @if_spi_prog_main_firmware._entry_ptr.44, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 655, i32 3}
!127 = !{ptr @if_spi_prog_main_firmware._entry.45, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @if_spi_prog_main_firmware._entry_ptr.47, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 661, i32 3}
!131 = !{ptr @if_spi_prog_main_firmware._entry.48, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @if_spi_prog_main_firmware._entry_ptr.50, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 553, i32 3}
!135 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @if_spi_prog_main_firmware_check_len._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @if_spi_prog_main_firmware_check_len._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 563, i32 3}
!140 = !{ptr @if_spi_prog_main_firmware_check_len._entry.53, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @if_spi_prog_main_firmware_check_len._entry_ptr.55, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 568, i32 3}
!144 = !{ptr @if_spi_prog_main_firmware_check_len._entry.56, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @if_spi_prog_main_firmware_check_len._entry_ptr.58, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 945, i32 25}
!148 = !{ptr @__func__.if_spi_host_to_card, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 946, i32 7}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 975, i32 25}
!152 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 863, i32 25}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 926, i32 25}
!156 = !{ptr @__func__.if_spi_host_to_card_worker, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 926, i32 47}
!158 = !{ptr @.str.63, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 700, i32 25}
!160 = !{ptr @__func__.if_spi_c2h_cmd, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 701, i32 7}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 706, i32 7}
!164 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 728, i32 25}
!166 = !{ptr @__func__.if_spi_c2h_data, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 748, i32 7}
!168 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 753, i32 7}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 817, i32 25}
!172 = !{ptr @__func__.if_spi_h2c, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 817, i32 43}
!174 = !{ptr @__func__.if_spi_e2h, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 841, i32 43}
!176 = !{ptr @.str.68, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1203, i32 2}
!178 = !{ptr @.str.69, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @libertas_spi_remove._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @libertas_spi_remove._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @if_spi_pm_ops, !182, !"if_spi_pm_ops", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1248, i32 32}
!183 = !{ptr @.str.70, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/marvell/libertas/if_spi.c", i32 1270, i32 2}
!185 = !{ptr @.str.71, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @if_spi_init_module._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @if_spi_init_module._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{!"auto-init"}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{i64 2156727972, i64 2156728483, i64 2156728009, i64 2156728065, i64 2156728099, i64 2156728123, i64 2156728164, i64 2156728185, i64 2156728213, i64 2156728247}
!200 = !{i64 2156688859, i64 2156689370, i64 2156688896, i64 2156688952, i64 2156688986, i64 2156689010, i64 2156689051, i64 2156689072, i64 2156689100, i64 2156689134}
!201 = !{i64 2156691073, i64 2156691584, i64 2156691110, i64 2156691166, i64 2156691200, i64 2156691224, i64 2156691265, i64 2156691286, i64 2156691314, i64 2156691348}
