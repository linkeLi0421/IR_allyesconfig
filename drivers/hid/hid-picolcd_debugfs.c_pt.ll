; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-picolcd_debugfs.c_pt.bc'
source_filename = "../drivers/hid/hid-picolcd_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.picolcd_data = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, [2 x i8], i16, [2 x i8], ptr, ptr, [17 x i16], ptr, ptr, i8, ptr, i8, i8, i8, [8 x ptr], %struct.spinlock, %struct.mutex, ptr, i32 }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.80 = type { ptr }
%struct.picolcd_pending = type { ptr, ptr, %struct.completion, i32, [64 x i8] }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0Aout report %d (size %d) =  \00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"out report %s (%d, size=%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"REPORT_LED_STATE\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09GPO state: 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"REPORT_BRIGHTNESS\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09Brightness: 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REPORT_CONTRAST\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09Contrast: 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REPORT_RESET\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09Duration: 0x%02x%02x (%dms)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REPORT_LCD_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REPORT_EE_READ\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09Data address: 0x%02x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09Data length: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REPORT_EE_WRITE\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\09No data\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09Data overflowed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"REPORT_ERASE_MEMORY\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\09Address inside 64 byte block: 0x%02x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\09Address inside 64 byte block: 0x%02x%02x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09Not supported\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"REPORT_READ_MEMORY\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\09Data address: 0x%02x%02x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"REPORT_WRITE_MEMORY\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"REPORT_EXIT_KEYBOARD\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\09Restart delay: %dms (0x%02x%02x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REPORT_VERSION\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REPORT_DEVID\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"REPORT_SPLASH_SIZE\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"REPORT_HOOK_VERSION\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"report %s (%d, size=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"REPORT_ERROR_CODE\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\09Error code 0x%02x (%s) in reply to report 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@error_codes = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\09Error code 0x%02x in reply to report 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"REPORT_KEY_STATE\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09No key pressed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\09One key pressed: 0x%02x (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\09Two keys pressed: 0x%02x (%d), 0x%02x (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REPORT_IR_DATA\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\09Unexpectedly 0 data length\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09Data length: %d\0A\09IR Data: \00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09Overflowing data length: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REPORT_EE_DATA\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"REPORT_MEMORY\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09Firmware version: %d.%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"REPORT_BL_ERASE_MEMORY\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"REPORT_BL_READ_MEMORY\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"REPORT_BL_WRITE_MEMORY\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\09Serial: 0x%02x%02x%02x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09Type: 0x%02x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09Total splash space: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09Used splash space: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@picolcd_init_devfs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->mutex_flash\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@picolcd_debug_reset_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @picolcd_debug_reset_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @picolcd_debug_reset_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@picolcd_debug_eeprom_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @picolcd_debug_eeprom_read, ptr @picolcd_debug_eeprom_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@picolcd_debug_flash_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @picolcd_debug_flash_read, ptr @picolcd_debug_flash_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@picolcd_init_devfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.60, i32 867, ptr @.str.61, ptr @.str.62 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Unexpected FLASH access reports, please submit rdesc for review\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"picolcd_init_devfs\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/hid/hid-picolcd_debugfs.c\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@picolcd_init_devfs._entry_ptr = internal global ptr @picolcd_init_devfs._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parameter missing\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"data_missing\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"block readonly\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"block not erasable\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"block too big\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"section overflow\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid command length\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid data length\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fb\00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"all fb\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"all\0A\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [24 x i64] [i64 22, i64 32, i64 129, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 163, i64 164, i64 178, i64 179, i64 180, i64 193, i64 239, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247, i64 255]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [14 x i64] [i64 12, i64 32, i64 16, i64 17, i64 33, i64 50, i64 65, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 32]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 65, i64 242]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 65, i64 244]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 65, i64 243]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 406, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 417, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 418, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 420, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 426, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 428, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 434, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 436, i32 27 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 442, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 444, i32 27 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 451, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 472, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 474, i32 27 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 477, i32 27 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 483, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 491, i32 28 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 497, i32 28 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 505, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 509, i32 28 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 513, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 517, i32 28 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 525, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 535, i32 28 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 549, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 594, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 596, i32 27 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 603, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 608, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 613, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 618, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 632, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 659, i32 27 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 660, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 663, i32 28 }
@___asan_gen_.190 = private unnamed_addr constant [12 x i8] c"error_codes\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 362, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 666, i32 28 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 673, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 676, i32 28 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 678, i32 28 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 681, i32 28 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 688, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 691, i32 28 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 694, i32 28 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 700, i32 28 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 708, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 731, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 775, i32 27 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 781, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 787, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 793, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 801, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 804, i32 27 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 812, i32 27 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 815, i32 27 }
@___asan_gen_.250 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 844, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 848, i32 43 }
@___asan_gen_.259 = private unnamed_addr constant [25 x i8] c"picolcd_debug_reset_fops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 60, i32 37 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 853, i32 44 }
@___asan_gen_.265 = private unnamed_addr constant [26 x i8] c"picolcd_debug_eeprom_fops\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 157, i32 37 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 863, i32 43 }
@___asan_gen_.271 = private unnamed_addr constant [25 x i8] c"picolcd_debug_flash_fops\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 350, i32 37 }
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 867, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 363, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 363, i32 13 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 363, i32 34 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 363, i32 50 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 364, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 364, i32 24 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 364, i32 41 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 365, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 365, i32 28 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 49, i32 18 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 52, i32 25 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 230, i32 6 }
@___asan_gen_.329 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 214, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 156, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 26, i32 17 }
@___asan_gen_.337 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.338 = private constant [37 x i8] c"../drivers/hid/hid-picolcd_debugfs.c\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 28, i32 17 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @picolcd_init_devfs._entry, ptr @picolcd_init_devfs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @error_codes, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @picolcd_init_devfs.__key, ptr @.str.54, ptr @.str.55, ptr @picolcd_debug_reset_fops, ptr @.str.56, ptr @picolcd_debug_eeprom_fops, ptr @.str.57, ptr @picolcd_debug_flash_fops, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_codes to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_devfs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_debug_reset_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_debug_eeprom_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_debug_flash_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_devfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @picolcd_debug_out_report(ptr nocapture noundef readonly %data, ptr noundef %hdev, ptr noundef %report) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %shr = lshr i32 %1, 3
  %add = add nuw nsw i32 %shr, 1
  %debug_list = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 52
  %2 = ptrtoint ptr %debug_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %debug_list, align 4
  %cmp.i.not = icmp eq ptr %3, %debug_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 256) #13
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @hid_alloc_report_buf(ptr noundef %report, i32 noundef 2592) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup.sink.split_crit_edge, label %if.end8

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end4
  %id = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef %6, i32 noundef %add)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %call5, align 1
  tail call void @hid_output_report(ptr noundef %report, ptr noundef nonnull %call5) #10
  %umin.i = tail call i32 @llvm.umin.i32(i32 %shr, i32 83) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end8
  %j.06.i = phi i32 [ %inc10.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end8 ]
  %i.05.i = phi i32 [ %inc12.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end8 ]
  %arrayidx.i = getelementptr i8, ptr %call5, i32 %i.05.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = lshr i8 %11, 4
  %13 = zext i8 %12 to i32
  %arrayidx2.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.i, align 1
  %inc.i = add nuw nsw i32 %j.06.i, 1
  %arrayidx3.i = getelementptr i8, ptr %call7.i, i32 %j.06.i
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx3.i, align 1
  %17 = load i8, ptr %arrayidx.i, align 1
  %18 = and i8 %17, 15
  %and6.i = zext i8 %18 to i32
  %arrayidx7.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and6.i
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx7.i, align 1
  %inc8.i = add nuw nsw i32 %j.06.i, 2
  %arrayidx9.i = getelementptr i8, ptr %call7.i, i32 %inc.i
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx9.i, align 1
  %inc10.i = add nuw nsw i32 %j.06.i, 3
  %arrayidx11.i = getelementptr i8, ptr %call7.i, i32 %inc8.i
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 32, ptr %arrayidx11.i, align 1
  %inc12.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %i.05.i, %umin.i
  br i1 %exitcond.not.i, label %if.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx11.i.le = getelementptr i8, ptr %call7.i, i32 %inc8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 671, i32 %1)
  %cmp.i520 = icmp ugt i32 %1, 671
  %arrayidx13.i = getelementptr i8, ptr %call7.i, i32 %inc10.i
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx13.i, align 1
  %24 = ptrtoint ptr %arrayidx11.i.le to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 10, ptr %arrayidx11.i.le, align 1
  br i1 %cmp.i520, label %if.then21.i, label %if.end.i.dump_buff_as_hex.exit_crit_edge

if.end.i.dump_buff_as_hex.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dump_buff_as_hex.exit

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx9.i.le = getelementptr i8, ptr %call7.i, i32 %inc.i
  %arrayidx3.i.le = getelementptr i8, ptr %call7.i, i32 %j.06.i
  %25 = ptrtoint ptr %arrayidx3.i.le to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 46, ptr %arrayidx3.i.le, align 1
  %26 = ptrtoint ptr %arrayidx9.i.le to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 46, ptr %arrayidx9.i.le, align 1
  br label %dump_buff_as_hex.exit

dump_buff_as_hex.exit:                            ; preds = %if.then21.i, %if.end.i.dump_buff_as_hex.exit_crit_edge
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %sw.default261 [
    i32 129, label %sw.bb
    i32 145, label %sw.bb17
    i32 146, label %sw.bb24
    i32 147, label %sw.bb31
    i32 148, label %sw.bb44
    i32 149, label %sw.bb48
    i32 150, label %sw.bb52
    i32 163, label %sw.bb56
    i32 164, label %sw.bb68
    i32 178, label %dump_buff_as_hex.exit.sw.bb98_crit_edge
    i32 242, label %dump_buff_as_hex.exit.sw.bb98_crit_edge521
    i32 179, label %dump_buff_as_hex.exit.sw.bb117_crit_edge
    i32 243, label %dump_buff_as_hex.exit.sw.bb117_crit_edge522
    i32 180, label %dump_buff_as_hex.exit.sw.bb145_crit_edge
    i32 244, label %dump_buff_as_hex.exit.sw.bb145_crit_edge523
    i32 193, label %dump_buff_as_hex.exit.sw.epilog265_crit_edge
    i32 239, label %sw.bb215
    i32 241, label %sw.bb230
    i32 245, label %sw.bb234
    i32 246, label %sw.bb238
    i32 247, label %sw.bb242
    i32 255, label %sw.bb246
  ]

dump_buff_as_hex.exit.sw.epilog265_crit_edge:     ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog265

dump_buff_as_hex.exit.sw.bb145_crit_edge523:      ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb145

dump_buff_as_hex.exit.sw.bb145_crit_edge:         ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb145

dump_buff_as_hex.exit.sw.bb117_crit_edge522:      ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb117

dump_buff_as_hex.exit.sw.bb117_crit_edge:         ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb117

dump_buff_as_hex.exit.sw.bb98_crit_edge521:       ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb98

dump_buff_as_hex.exit.sw.bb98_crit_edge:          ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb98

sw.bb:                                            ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 129, i32 noundef %shr)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx14 = getelementptr i8, ptr %call5, i32 1
  %30 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %31 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %conv15)
  br label %sw.epilog265.sink.split

sw.bb17:                                          ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 145, i32 noundef %shr)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx21 = getelementptr i8, ptr %call5, i32 1
  %32 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %33 to i32
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %conv22)
  br label %sw.epilog265.sink.split

sw.bb24:                                          ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, i32 noundef 146, i32 noundef %shr)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx28 = getelementptr i8, ptr %call5, i32 1
  %34 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %35 to i32
  %call30 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %conv29)
  br label %sw.epilog265.sink.split

sw.bb31:                                          ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, i32 noundef 147, i32 noundef %shr)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx35 = getelementptr i8, ptr %call5, i32 2
  %36 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %37 to i32
  %arrayidx37 = getelementptr i8, ptr %call5, i32 1
  %38 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %39 to i32
  %shl = shl nuw nsw i32 %conv36, 8
  %or = or i32 %shl, %conv38
  %call43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %conv36, i32 noundef %conv38, i32 noundef %or)
  br label %sw.epilog265.sink.split

sw.bb44:                                          ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 148, i32 noundef %shr)
  br label %sw.epilog265.sink.split

sw.bb48:                                          ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 149, i32 noundef %shr)
  br label %sw.epilog265.sink.split

sw.bb52:                                          ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 150, i32 noundef %shr)
  br label %sw.epilog265.sink.split

sw.bb56:                                          ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call59 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 163, i32 noundef %shr)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx60 = getelementptr i8, ptr %call5, i32 2
  %40 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %41 to i32
  %arrayidx62 = getelementptr i8, ptr %call5, i32 1
  %42 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %43 to i32
  %call64 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %conv61, i32 noundef %conv63)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx65 = getelementptr i8, ptr %call5, i32 3
  %44 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %45 to i32
  %call67 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %conv66)
  br label %sw.epilog265.sink.split

sw.bb68:                                          ; preds = %dump_buff_as_hex.exit
  %call71 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, i32 noundef 164, i32 noundef %shr)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx72 = getelementptr i8, ptr %call5, i32 2
  %46 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %47 to i32
  %arrayidx74 = getelementptr i8, ptr %call5, i32 1
  %48 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %49 to i32
  %call76 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %conv73, i32 noundef %conv75)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx77 = getelementptr i8, ptr %call5, i32 3
  %50 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %51 to i32
  %call79 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %conv78)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %52 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp = icmp eq i8 %53, 0
  br i1 %cmp, label %if.then83, label %if.else

if.then83:                                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #12
  %54 = call ptr @memcpy(ptr %call7.i, ptr @.str.15, i32 10)
  br label %sw.epilog265.sink.split

if.else:                                          ; preds = %sw.bb68
  %conv81 = zext i8 %53 to i32
  %add87 = add nuw nsw i32 %conv81, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add87, i32 %add)
  %cmp88.not = icmp ugt i32 %add87, %add
  br i1 %cmp88.not, label %if.else94, label %if.then90

if.then90:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 667765797232975872, ptr %call7.i, align 8
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %add.ptr = getelementptr i8, ptr %call5, i32 4
  %56 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx77, align 1
  %conv93 = zext i8 %57 to i32
  tail call fastcc void @dump_buff_as_hex(ptr noundef nonnull %call7.i, ptr noundef %add.ptr, i32 noundef %conv93)
  br label %sw.epilog265.sink.split

if.else94:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %58 = call ptr @memcpy(ptr %call7.i, ptr @.str.17, i32 18)
  br label %sw.epilog265.sink.split

sw.bb98:                                          ; preds = %dump_buff_as_hex.exit.sw.bb98_crit_edge, %dump_buff_as_hex.exit.sw.bb98_crit_edge521
  %call101 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18, i32 noundef %28, i32 noundef %shr)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %addr_sz = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 5
  %59 = ptrtoint ptr %addr_sz to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr_sz, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %60, label %sw.default [
    i32 2, label %sw.bb102
    i32 3, label %sw.bb108
  ]

sw.bb102:                                         ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx103 = getelementptr i8, ptr %call5, i32 2
  %62 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %63 to i32
  %arrayidx105 = getelementptr i8, ptr %call5, i32 1
  %64 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %65 to i32
  %call107 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.19, i32 noundef %conv104, i32 noundef %conv106)
  br label %sw.epilog265.sink.split

sw.bb108:                                         ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx109 = getelementptr i8, ptr %call5, i32 3
  %66 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %67 to i32
  %arrayidx111 = getelementptr i8, ptr %call5, i32 2
  %68 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %69 to i32
  %arrayidx113 = getelementptr i8, ptr %call5, i32 1
  %70 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %71 to i32
  %call115 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.20, i32 noundef %conv110, i32 noundef %conv112, i32 noundef %conv114)
  br label %sw.epilog265.sink.split

sw.default:                                       ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #12
  %72 = call ptr @memcpy(ptr %call7.i, ptr @.str.21, i32 16)
  br label %sw.epilog265.sink.split

sw.bb117:                                         ; preds = %dump_buff_as_hex.exit.sw.bb117_crit_edge, %dump_buff_as_hex.exit.sw.bb117_crit_edge522
  %call120 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22, i32 noundef %28, i32 noundef %shr)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %addr_sz121 = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 5
  %73 = ptrtoint ptr %addr_sz121 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addr_sz121, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %74, label %sw.default142 [
    i32 2, label %sw.bb122
    i32 3, label %sw.bb131
  ]

sw.bb122:                                         ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx123 = getelementptr i8, ptr %call5, i32 2
  %76 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %77 to i32
  %arrayidx125 = getelementptr i8, ptr %call5, i32 1
  %78 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %79 to i32
  %call127 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %conv124, i32 noundef %conv126)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx128 = getelementptr i8, ptr %call5, i32 3
  %80 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %81 to i32
  %call130 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %conv129)
  br label %sw.epilog265.sink.split

sw.bb131:                                         ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx132 = getelementptr i8, ptr %call5, i32 3
  %82 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %83 to i32
  %arrayidx134 = getelementptr i8, ptr %call5, i32 2
  %84 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx134, align 1
  %conv135 = zext i8 %85 to i32
  %arrayidx136 = getelementptr i8, ptr %call5, i32 1
  %86 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %87 to i32
  %call138 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.23, i32 noundef %conv133, i32 noundef %conv135, i32 noundef %conv137)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx139 = getelementptr i8, ptr %call5, i32 4
  %88 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %89 to i32
  %call141 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %conv140)
  br label %sw.epilog265.sink.split

sw.default142:                                    ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #12
  %90 = call ptr @memcpy(ptr %call7.i, ptr @.str.21, i32 16)
  br label %sw.epilog265.sink.split

sw.bb145:                                         ; preds = %dump_buff_as_hex.exit.sw.bb145_crit_edge, %dump_buff_as_hex.exit.sw.bb145_crit_edge523
  %call148 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24, i32 noundef %28, i32 noundef %shr)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %addr_sz149 = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 5
  %91 = ptrtoint ptr %addr_sz149 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %addr_sz149, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %92, label %sw.default212 [
    i32 2, label %sw.bb150
    i32 3, label %sw.bb180
  ]

sw.bb150:                                         ; preds = %sw.bb145
  %arrayidx151 = getelementptr i8, ptr %call5, i32 2
  %94 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %95 to i32
  %arrayidx153 = getelementptr i8, ptr %call5, i32 1
  %96 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %97 to i32
  %call155 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %conv152, i32 noundef %conv154)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx156 = getelementptr i8, ptr %call5, i32 3
  %98 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %99 to i32
  %call158 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %conv157)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %100 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx156, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp161 = icmp eq i8 %101, 0
  br i1 %cmp161, label %if.then163, label %if.else165

if.then163:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #12
  %102 = call ptr @memcpy(ptr %call7.i, ptr @.str.15, i32 10)
  br label %sw.epilog265.sink.split

if.else165:                                       ; preds = %sw.bb150
  %conv160 = zext i8 %101 to i32
  %add168 = add nuw nsw i32 %conv160, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add168, i32 %add)
  %cmp169.not = icmp ugt i32 %add168, %add
  br i1 %cmp169.not, label %if.else176, label %if.then171

if.then171:                                       ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 667765797232975872, ptr %call7.i, align 8
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %add.ptr173 = getelementptr i8, ptr %call5, i32 4
  %104 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx156, align 1
  %conv175 = zext i8 %105 to i32
  tail call fastcc void @dump_buff_as_hex(ptr noundef nonnull %call7.i, ptr noundef %add.ptr173, i32 noundef %conv175)
  br label %sw.epilog265.sink.split

if.else176:                                       ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #12
  %106 = call ptr @memcpy(ptr %call7.i, ptr @.str.17, i32 18)
  br label %sw.epilog265.sink.split

sw.bb180:                                         ; preds = %sw.bb145
  %arrayidx181 = getelementptr i8, ptr %call5, i32 3
  %107 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx181, align 1
  %conv182 = zext i8 %108 to i32
  %arrayidx183 = getelementptr i8, ptr %call5, i32 2
  %109 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %110 to i32
  %arrayidx185 = getelementptr i8, ptr %call5, i32 1
  %111 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx185, align 1
  %conv186 = zext i8 %112 to i32
  %call187 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.23, i32 noundef %conv182, i32 noundef %conv184, i32 noundef %conv186)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx188 = getelementptr i8, ptr %call5, i32 4
  %113 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx188, align 1
  %conv189 = zext i8 %114 to i32
  %call190 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %conv189)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %115 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx188, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp193 = icmp eq i8 %116, 0
  br i1 %cmp193, label %if.then195, label %if.else197

if.then195:                                       ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #12
  %117 = call ptr @memcpy(ptr %call7.i, ptr @.str.15, i32 10)
  br label %sw.epilog265.sink.split

if.else197:                                       ; preds = %sw.bb180
  %conv192 = zext i8 %116 to i32
  %add200 = add nuw nsw i32 %conv192, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add200, i32 %add)
  %cmp201.not = icmp ugt i32 %add200, %add
  br i1 %cmp201.not, label %if.else208, label %if.then203

if.then203:                                       ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 667765797232975872, ptr %call7.i, align 8
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %add.ptr205 = getelementptr i8, ptr %call5, i32 5
  %119 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx188, align 1
  %conv207 = zext i8 %120 to i32
  tail call fastcc void @dump_buff_as_hex(ptr noundef nonnull %call7.i, ptr noundef %add.ptr205, i32 noundef %conv207)
  br label %sw.epilog265.sink.split

if.else208:                                       ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #12
  %121 = call ptr @memcpy(ptr %call7.i, ptr @.str.17, i32 18)
  br label %sw.epilog265.sink.split

sw.default212:                                    ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #12
  %122 = call ptr @memcpy(ptr %call7.i, ptr @.str.21, i32 16)
  br label %sw.epilog265.sink.split

sw.bb215:                                         ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call218 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 239, i32 noundef %shr)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx219 = getelementptr i8, ptr %call5, i32 1
  %123 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx219, align 1
  %conv220 = zext i8 %124 to i32
  %arrayidx221 = getelementptr i8, ptr %call5, i32 2
  %125 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx221, align 1
  %conv222 = zext i8 %126 to i32
  %shl223 = shl nuw nsw i32 %conv222, 8
  %or224 = or i32 %shl223, %conv220
  %call229 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.26, i32 noundef %or224, i32 noundef %conv222, i32 noundef %conv220)
  br label %sw.epilog265.sink.split

sw.bb230:                                         ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call233 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27, i32 noundef 241, i32 noundef %shr)
  br label %sw.epilog265.sink.split

sw.bb234:                                         ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call237 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.28, i32 noundef 245, i32 noundef %shr)
  br label %sw.epilog265.sink.split

sw.bb238:                                         ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call241 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.29, i32 noundef 246, i32 noundef %shr)
  br label %sw.epilog265.sink.split

sw.bb242:                                         ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call245 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.30, i32 noundef 247, i32 noundef %shr)
  br label %sw.epilog265.sink.split

sw.bb246:                                         ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call249 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27, i32 noundef 255, i32 noundef %shr)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx250 = getelementptr i8, ptr %call5, i32 1
  %127 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx250, align 1
  %conv251 = zext i8 %128 to i32
  %arrayidx252 = getelementptr i8, ptr %call5, i32 2
  %129 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx252, align 1
  %conv253 = zext i8 %130 to i32
  %shl254 = shl nuw nsw i32 %conv253, 8
  %or255 = or i32 %shl254, %conv251
  %call260 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.26, i32 noundef %or255, i32 noundef %conv253, i32 noundef %conv251)
  br label %sw.epilog265.sink.split

sw.default261:                                    ; preds = %dump_buff_as_hex.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call264 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31, i32 noundef %28, i32 noundef %shr)
  br label %sw.epilog265.sink.split

sw.epilog265.sink.split:                          ; preds = %sw.default261, %sw.bb246, %sw.bb242, %sw.bb238, %sw.bb234, %sw.bb230, %sw.bb215, %sw.default212, %if.else208, %if.then203, %if.then195, %if.else176, %if.then171, %if.then163, %sw.default142, %sw.bb131, %sw.bb122, %sw.default, %sw.bb108, %sw.bb102, %if.else94, %if.then90, %if.then83, %sw.bb56, %sw.bb52, %sw.bb48, %sw.bb44, %sw.bb31, %sw.bb24, %sw.bb17, %sw.bb
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  br label %sw.epilog265

sw.epilog265:                                     ; preds = %sw.epilog265.sink.split, %dump_buff_as_hex.exit.sw.epilog265_crit_edge
  %debug_wait = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 54
  tail call void @__wake_up(ptr noundef %debug_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  tail call void @kfree(ptr noundef %call5) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog265, %if.end4.cleanup.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_alloc_report_buf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_debug_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_output_report(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_buff_as_hex(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %data, i32 noundef %data_len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %cmp4.not = icmp eq i32 %data_len, 0
  br i1 %cmp4.not, label %for.end.thread, label %for.body.preheader

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dst, align 1
  br label %if.end26

for.body.preheader:                               ; preds = %entry
  %1 = add i32 %data_len, -1
  %umin = call i32 @llvm.umin.i32(i32 %1, i32 83)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %j.06 = phi i32 [ %inc10, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.05 = phi i32 [ %inc12, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.05
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 4
  %5 = zext i8 %4 to i32
  %arrayidx2 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %inc = add nuw nsw i32 %j.06, 1
  %arrayidx3 = getelementptr i8, ptr %dst, i32 %j.06
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx3, align 1
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, 15
  %and6 = zext i8 %10 to i32
  %arrayidx7 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and6
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7, align 1
  %inc8 = add nuw nsw i32 %j.06, 2
  %arrayidx9 = getelementptr i8, ptr %dst, i32 %inc
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx9, align 1
  %inc10 = add nuw nsw i32 %j.06, 3
  %arrayidx11 = getelementptr i8, ptr %dst, i32 %inc8
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 32, ptr %arrayidx11, align 1
  %inc12 = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %i.05, %umin
  br i1 %exitcond.not, label %if.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %inc12, i32 %data_len)
  %cmp = icmp ult i32 %inc12, %data_len
  %arrayidx13 = getelementptr i8, ptr %dst, i32 %inc10
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx13, align 1
  %sub = add nuw nsw i32 %j.06, 2
  %arrayidx16 = getelementptr i8, ptr %dst, i32 %sub
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 10, ptr %arrayidx16, align 1
  br i1 %cmp, label %if.then21, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23 = getelementptr i8, ptr %dst, i32 %j.06
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 46, ptr %arrayidx23, align 1
  %sub24 = add nuw nsw i32 %j.06, 1
  %arrayidx25 = getelementptr i8, ptr %dst, i32 %sub24
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 46, ptr %arrayidx25, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end.if.end26_crit_edge, %for.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @picolcd_debug_raw_event(ptr nocapture noundef readonly %data, ptr noundef %hdev, ptr nocapture noundef readonly %report, ptr noundef readonly %raw_data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_list = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 52
  %0 = ptrtoint ptr %debug_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %debug_list, align 4
  %cmp.i.not = icmp eq ptr %1, %debug_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 256) #13
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %4, label %sw.default245 [
    i32 16, label %sw.bb
    i32 17, label %sw.bb22
    i32 33, label %sw.bb55
    i32 50, label %sw.bb83
    i32 65, label %sw.bb116
    i32 241, label %sw.bb183
    i32 242, label %sw.bb192
    i32 243, label %sw.bb196
    i32 244, label %sw.bb200
    i32 245, label %sw.bb204
    i32 246, label %sw.bb220
    i32 247, label %sw.bb236
  ]

sw.bb:                                            ; preds = %if.end4
  %sub = add i32 %size, -1
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 16, i32 noundef %sub)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx = getelementptr i8, ptr %raw_data, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %7)
  %cmp = icmp ult i8 %7, 9
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx12 = getelementptr [9 x ptr], ptr @error_codes, i32 0, i32 %conv
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i8, ptr %raw_data, i32 1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.34, i32 noundef %conv, ptr noundef %9, i32 noundef %conv14)
  br label %sw.epilog249

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx18 = getelementptr i8, ptr %raw_data, i32 1
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %conv19)
  br label %sw.epilog249

sw.bb22:                                          ; preds = %if.end4
  %sub24 = add i32 %size, -1
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.36, i32 noundef 17, i32 noundef %sub24)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx26 = getelementptr i8, ptr %raw_data, i32 1
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp28 = icmp eq i8 %15, 0
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %16 = call ptr @memcpy(ptr %call7.i, ptr @.str.37, i32 17)
  br label %sw.epilog249

if.else32:                                        ; preds = %sw.bb22
  %arrayidx33 = getelementptr i8, ptr %raw_data, i32 2
  %17 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp35 = icmp eq i8 %18, 0
  br i1 %cmp35, label %if.then37, label %if.else43

if.then37:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.38, i32 noundef %conv27, i32 noundef %conv27)
  br label %sw.epilog249

if.else43:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  %conv34 = zext i8 %18 to i32
  %call52 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.39, i32 noundef %conv27, i32 noundef %conv27, i32 noundef %conv34, i32 noundef %conv34)
  br label %sw.epilog249

sw.bb55:                                          ; preds = %if.end4
  %sub57 = add i32 %size, -1
  %call58 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.40, i32 noundef 33, i32 noundef %sub57)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx59 = getelementptr i8, ptr %raw_data, i32 1
  %19 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp61 = icmp eq i8 %20, 0
  br i1 %cmp61, label %if.then63, label %if.else65

if.then63:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #12
  %21 = call ptr @memcpy(ptr %call7.i, ptr @.str.41, i32 29)
  br label %sw.epilog249

if.else65:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_cmp4(i32 %conv60, i32 %size)
  %cmp68.not.not = icmp slt i32 %conv60, %size
  br i1 %cmp68.not.not, label %if.then70, label %if.else76

if.then70:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #12
  %call73 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.42, i32 noundef %conv60)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %add.ptr = getelementptr i8, ptr %raw_data, i32 2
  %22 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx59, align 1
  %conv75 = zext i8 %23 to i32
  tail call fastcc void @dump_buff_as_hex(ptr noundef nonnull %call7.i, ptr noundef %add.ptr, i32 noundef %conv75)
  br label %sw.epilog249

if.else76:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #12
  %sub79 = add nsw i32 %conv60, -1
  %call80 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.43, i32 noundef %sub79)
  br label %sw.epilog249

sw.bb83:                                          ; preds = %if.end4
  %sub85 = add i32 %size, -1
  %call86 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.44, i32 noundef 50, i32 noundef %sub85)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx87 = getelementptr i8, ptr %raw_data, i32 2
  %24 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %25 to i32
  %arrayidx89 = getelementptr i8, ptr %raw_data, i32 1
  %26 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %27 to i32
  %call91 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %conv88, i32 noundef %conv90)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx92 = getelementptr i8, ptr %raw_data, i32 3
  %28 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %29 to i32
  %call94 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %conv93)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %30 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp97 = icmp eq i8 %31, 0
  br i1 %cmp97, label %if.then99, label %if.else101

if.then99:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #12
  %32 = call ptr @memcpy(ptr %call7.i, ptr @.str.15, i32 10)
  br label %sw.epilog249

if.else101:                                       ; preds = %sw.bb83
  %conv96 = zext i8 %31 to i32
  %add104 = add nuw nsw i32 %conv96, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add104, i32 %size)
  %cmp105.not = icmp sgt i32 %add104, %size
  br i1 %cmp105.not, label %if.else112, label %if.then107

if.then107:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 667765797232975872, ptr %call7.i, align 8
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %add.ptr109 = getelementptr i8, ptr %raw_data, i32 4
  %34 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx92, align 1
  %conv111 = zext i8 %35 to i32
  tail call fastcc void @dump_buff_as_hex(ptr noundef nonnull %call7.i, ptr noundef %add.ptr109, i32 noundef %conv111)
  br label %sw.epilog249

if.else112:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #12
  %36 = call ptr @memcpy(ptr %call7.i, ptr @.str.17, i32 18)
  br label %sw.epilog249

sw.bb116:                                         ; preds = %if.end4
  %sub118 = add i32 %size, -1
  %call119 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.45, i32 noundef 65, i32 noundef %sub118)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %addr_sz = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 5
  %37 = ptrtoint ptr %addr_sz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr_sz, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %38, label %sw.default [
    i32 2, label %sw.bb120
    i32 3, label %sw.bb150
  ]

sw.bb120:                                         ; preds = %sw.bb116
  %arrayidx121 = getelementptr i8, ptr %raw_data, i32 2
  %40 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %41 to i32
  %arrayidx123 = getelementptr i8, ptr %raw_data, i32 1
  %42 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %43 to i32
  %call125 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %conv122, i32 noundef %conv124)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx126 = getelementptr i8, ptr %raw_data, i32 3
  %44 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %45 to i32
  %call128 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %conv127)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %46 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp131 = icmp eq i8 %47, 0
  br i1 %cmp131, label %if.then133, label %if.else135

if.then133:                                       ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #12
  %48 = call ptr @memcpy(ptr %call7.i, ptr @.str.15, i32 10)
  br label %sw.epilog249

if.else135:                                       ; preds = %sw.bb120
  %conv130 = zext i8 %47 to i32
  %add138 = add nuw nsw i32 %conv130, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add138, i32 %size)
  %cmp139.not = icmp sgt i32 %add138, %size
  br i1 %cmp139.not, label %if.else146, label %if.then141

if.then141:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 667765797232975872, ptr %call7.i, align 8
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %add.ptr143 = getelementptr i8, ptr %raw_data, i32 4
  %50 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx126, align 1
  %conv145 = zext i8 %51 to i32
  tail call fastcc void @dump_buff_as_hex(ptr noundef nonnull %call7.i, ptr noundef %add.ptr143, i32 noundef %conv145)
  br label %sw.epilog249

if.else146:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #12
  %52 = call ptr @memcpy(ptr %call7.i, ptr @.str.17, i32 18)
  br label %sw.epilog249

sw.bb150:                                         ; preds = %sw.bb116
  %arrayidx151 = getelementptr i8, ptr %raw_data, i32 3
  %53 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %54 to i32
  %arrayidx153 = getelementptr i8, ptr %raw_data, i32 2
  %55 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %56 to i32
  %arrayidx155 = getelementptr i8, ptr %raw_data, i32 1
  %57 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx155, align 1
  %conv156 = zext i8 %58 to i32
  %call157 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.23, i32 noundef %conv152, i32 noundef %conv154, i32 noundef %conv156)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx158 = getelementptr i8, ptr %raw_data, i32 4
  %59 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %60 to i32
  %call160 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %conv159)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %61 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx158, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp163 = icmp eq i8 %62, 0
  br i1 %cmp163, label %if.then165, label %if.else167

if.then165:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #12
  %63 = call ptr @memcpy(ptr %call7.i, ptr @.str.15, i32 10)
  br label %sw.epilog249

if.else167:                                       ; preds = %sw.bb150
  %conv162 = zext i8 %62 to i32
  %add170 = add nuw nsw i32 %conv162, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add170, i32 %size)
  %cmp171.not = icmp sgt i32 %add170, %size
  br i1 %cmp171.not, label %if.else178, label %if.then173

if.then173:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 667765797232975872, ptr %call7.i, align 8
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %add.ptr175 = getelementptr i8, ptr %raw_data, i32 5
  %65 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx158, align 1
  %conv177 = zext i8 %66 to i32
  tail call fastcc void @dump_buff_as_hex(ptr noundef nonnull %call7.i, ptr noundef %add.ptr175, i32 noundef %conv177)
  br label %sw.epilog249

if.else178:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #12
  %67 = call ptr @memcpy(ptr %call7.i, ptr @.str.17, i32 18)
  br label %sw.epilog249

sw.default:                                       ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #12
  %68 = call ptr @memcpy(ptr %call7.i, ptr @.str.21, i32 16)
  br label %sw.epilog249

sw.bb183:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sub185 = add i32 %size, -1
  %call186 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, i32 noundef 241, i32 noundef %sub185)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx187 = getelementptr i8, ptr %raw_data, i32 2
  %69 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx187, align 1
  %conv188 = zext i8 %70 to i32
  %arrayidx189 = getelementptr i8, ptr %raw_data, i32 1
  %71 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx189, align 1
  %conv190 = zext i8 %72 to i32
  %call191 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.46, i32 noundef %conv188, i32 noundef %conv190)
  br label %sw.epilog249

sw.bb192:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sub194 = add i32 %size, -1
  %call195 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.47, i32 noundef 242, i32 noundef %sub194)
  br label %sw.epilog249

sw.bb196:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sub198 = add i32 %size, -1
  %call199 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.48, i32 noundef 243, i32 noundef %sub198)
  br label %sw.epilog249

sw.bb200:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sub202 = add i32 %size, -1
  %call203 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.49, i32 noundef 244, i32 noundef %sub202)
  br label %sw.epilog249

sw.bb204:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sub206 = add i32 %size, -1
  %call207 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28, i32 noundef 245, i32 noundef %sub206)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx208 = getelementptr i8, ptr %raw_data, i32 1
  %73 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx208, align 1
  %conv209 = zext i8 %74 to i32
  %arrayidx210 = getelementptr i8, ptr %raw_data, i32 2
  %75 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %76 to i32
  %arrayidx212 = getelementptr i8, ptr %raw_data, i32 3
  %77 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx212, align 1
  %conv213 = zext i8 %78 to i32
  %arrayidx214 = getelementptr i8, ptr %raw_data, i32 4
  %79 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx214, align 1
  %conv215 = zext i8 %80 to i32
  %call216 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.50, i32 noundef %conv209, i32 noundef %conv211, i32 noundef %conv213, i32 noundef %conv215)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx217 = getelementptr i8, ptr %raw_data, i32 5
  %81 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx217, align 1
  %conv218 = zext i8 %82 to i32
  %call219 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.51, i32 noundef %conv218)
  br label %sw.epilog249

sw.bb220:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sub222 = add i32 %size, -1
  %call223 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.29, i32 noundef 246, i32 noundef %sub222)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx224 = getelementptr i8, ptr %raw_data, i32 2
  %83 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx224, align 1
  %conv225 = zext i8 %84 to i32
  %shl = shl nuw nsw i32 %conv225, 8
  %arrayidx226 = getelementptr i8, ptr %raw_data, i32 1
  %85 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx226, align 1
  %conv227 = zext i8 %86 to i32
  %or = or i32 %shl, %conv227
  %call228 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.52, i32 noundef %or)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx229 = getelementptr i8, ptr %raw_data, i32 4
  %87 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx229, align 1
  %conv230 = zext i8 %88 to i32
  %shl231 = shl nuw nsw i32 %conv230, 8
  %arrayidx232 = getelementptr i8, ptr %raw_data, i32 3
  %89 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx232, align 1
  %conv233 = zext i8 %90 to i32
  %or234 = or i32 %shl231, %conv233
  %call235 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.53, i32 noundef %or234)
  br label %sw.epilog249

sw.bb236:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sub238 = add i32 %size, -1
  %call239 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 247, i32 noundef %sub238)
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %arrayidx240 = getelementptr i8, ptr %raw_data, i32 1
  %91 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx240, align 1
  %conv241 = zext i8 %92 to i32
  %arrayidx242 = getelementptr i8, ptr %raw_data, i32 2
  %93 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx242, align 1
  %conv243 = zext i8 %94 to i32
  %call244 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.46, i32 noundef %conv241, i32 noundef %conv243)
  br label %sw.epilog249

sw.default245:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sub247 = add i32 %size, -1
  %call248 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 256, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %4, i32 noundef %sub247)
  br label %sw.epilog249

sw.epilog249:                                     ; preds = %sw.default245, %sw.bb236, %sw.bb220, %sw.bb204, %sw.bb200, %sw.bb196, %sw.bb192, %sw.bb183, %sw.default, %if.else178, %if.then173, %if.then165, %if.else146, %if.then141, %if.then133, %if.else112, %if.then107, %if.then99, %if.else76, %if.then70, %if.then63, %if.else43, %if.then37, %if.then30, %if.else, %if.then8
  tail call void @hid_debug_event(ptr noundef %hdev, ptr noundef nonnull %call7.i) #10
  %debug_wait = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 54
  tail call void @__wake_up(ptr noundef %debug_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog249, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @picolcd_init_devfs(ptr noundef %data, ptr noundef readnone %eeprom_r, ptr noundef readnone %eeprom_w, ptr noundef readonly %flash_r, ptr noundef readnone %flash_w, ptr noundef readnone %reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %mutex_flash = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex_flash, ptr noundef nonnull @.str.54, ptr noundef nonnull @picolcd_init_devfs.__key) #10
  %tobool.not = icmp eq ptr %reset, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %debug_dir = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug_dir, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 384, ptr noundef %3, ptr noundef %data, ptr noundef nonnull @picolcd_debug_reset_fops) #10
  %debug_reset = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %debug_reset to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %debug_reset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %eeprom_r, null
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %tobool3.not = icmp eq ptr %eeprom_w, null
  br i1 %tobool3.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %cond7 = phi i16 [ 0, %lor.lhs.false.if.then4_crit_edge ], [ 256, %if.end.if.then4_crit_edge ]
  %tobool5.not = icmp eq ptr %eeprom_w, null
  %cond = select i1 %tobool5.not, i16 0, i16 128
  %or = or i16 %cond7, %cond
  %debug_dir8 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 49
  %5 = ptrtoint ptr %debug_dir8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %debug_dir8, align 4
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.56, i16 noundef zeroext %or, ptr noundef %6, ptr noundef %data, ptr noundef nonnull @picolcd_debug_eeprom_fops) #10
  %debug_eeprom = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %debug_eeprom to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %debug_eeprom, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %lor.lhs.false.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %flash_r, null
  br i1 %tobool11.not, label %if.end10.if.end20_crit_edge, label %land.lhs.true

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end10
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %flash_r, i32 0, i32 6
  %8 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %land.lhs.true13, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true13:                                  ; preds = %land.lhs.true
  %field = getelementptr inbounds %struct.hid_report, ptr %flash_r, i32 0, i32 5
  %10 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %field, align 4
  %report_size = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %report_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp14 = icmp eq i32 %13, 8
  br i1 %cmp14, label %if.then16, label %land.lhs.true13.if.end20_crit_edge

land.lhs.true13.if.end20_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  %report_count = getelementptr inbounds %struct.hid_field, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %report_count, align 4
  %sub = add i32 %15, -1
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %land.lhs.true13.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %.sink = phi i32 [ %sub, %if.then16 ], [ -1, %land.lhs.true13.if.end20_crit_edge ], [ -1, %land.lhs.true.if.end20_crit_edge ], [ -1, %if.end10.if.end20_crit_edge ]
  %addr_sz19 = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 5
  %16 = ptrtoint ptr %addr_sz19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %addr_sz19, align 4
  %17 = and i32 %.sink, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %switch = icmp eq i32 %17, 2
  %tobool29.not = icmp eq ptr %flash_w, null
  br i1 %switch, label %if.then28, label %if.else37

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %cond30 = select i1 %tobool29.not, i16 0, i16 128
  %cond32 = select i1 %tobool11.not, i16 0, i16 256
  %or33 = or i16 %cond30, %cond32
  %debug_dir35 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 49
  %18 = ptrtoint ptr %debug_dir35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debug_dir35, align 4
  %call36 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.57, i16 noundef zeroext %or33, ptr noundef %19, ptr noundef %data, ptr noundef nonnull @picolcd_debug_flash_fops) #10
  %debug_flash = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %debug_flash to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call36, ptr %debug_flash, align 4
  br label %if.end46

if.else37:                                        ; preds = %if.end20
  %or.cond = and i1 %tobool11.not, %tobool29.not
  br i1 %or.cond, label %if.else37.if.end46_crit_edge, label %do.end44

if.else37.if.end46_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end44:                                         ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.58) #14
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %if.else37.if.end46_crit_edge, %if.then28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @picolcd_exit_devfs(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_reset = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %debug_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debug_reset, align 4
  store ptr null, ptr %debug_reset, align 4
  tail call void @debugfs_remove(ptr noundef %1) #10
  %debug_eeprom = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %debug_eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug_eeprom, align 4
  store ptr null, ptr %debug_eeprom, align 4
  tail call void @debugfs_remove(ptr noundef %3) #10
  %debug_flash = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %debug_flash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debug_flash, align 4
  store ptr null, ptr %debug_flash, align 4
  tail call void @debugfs_remove(ptr noundef %5) #10
  %mutex_flash = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %mutex_flash) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_debug_reset_write(ptr nocapture noundef readonly %f, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #10
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %5 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.76, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #15, !srcloc !176
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !177

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #10
  %7 = call i32 @llvm.read_register.i32(metadata !166) #10
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !178
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #10, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %while.cond.preheader, label %if.then11.i.i, !prof !177

while.cond.preheader:                             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not41 = icmp eq i32 %4, 0
  br i1 %cmp1.not41, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %cnt.042 = phi i32 [ %sub, %while.body.land.rhs_crit_edge ], [ %4, %while.cond.preheader.land.rhs_crit_edge ]
  %sub = add nsw i32 %cnt.042, -1
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %12, label %land.rhs.while.end_crit_edge [
    i8 32, label %land.rhs.while.body_crit_edge
    i8 10, label %land.rhs.while.body_crit_edge44
  ]

land.rhs.while.body_crit_edge44:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge44
  %cmp1.not = icmp eq i32 %sub, 0
  br i1 %cmp1.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %cnt.042, %land.rhs.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ]
  %arrayidx9 = getelementptr [32 x i8], ptr %buf, i32 0, i32 %cnt.0.lcssa
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx9, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @.str.72, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp12 = icmp eq i32 %bcmp, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %call15 = call i32 @picolcd_reset(ptr noundef %16) #10
  %call16 = call i32 @picolcd_fb_reset(ptr noundef %3, i32 noundef 1) #10
  br label %cleanup

if.else:                                          ; preds = %while.end
  %bcmp38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buf, ptr noundef nonnull dereferenceable(3) @.str.73, i32 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp38)
  %cmp19 = icmp eq i32 %bcmp38, 0
  br i1 %cmp19, label %if.then21, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = call i32 @picolcd_fb_reset(ptr noundef %3, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.else.cleanup_crit_edge, %if.then14, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ %count, %if.then21 ], [ %count, %if.then14 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_debug_reset_open(ptr nocapture noundef readonly %inode, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %f, ptr noundef nonnull @picolcd_debug_reset_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @picolcd_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @picolcd_fb_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_debug_reset_show(ptr noundef %f, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %fb_info = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fb_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb_info, align 4
  %tobool.not = icmp eq ptr %3, null
  %.str.78..str.77 = select i1 %tobool.not, ptr @.str.78, ptr @.str.77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull %.str.78..str.77) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_debug_eeprom_read(ptr nocapture noundef readonly %f, ptr noundef %u, i32 noundef %s, ptr nocapture noundef %off) #0 align 64 {
entry:
  %raw_data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %raw_data) #10
  %2 = getelementptr inbounds [3 x i8], ptr %raw_data, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %raw_data, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s)
  %cmp = icmp eq i32 %s, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %5)
  %cmp1 = icmp sgt i64 %5, 255
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conv = trunc i64 %5 to i8
  %6 = ptrtoint ptr %raw_data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %raw_data, align 1
  %7 = lshr i64 %5, 8
  %conv5 = trunc i64 %7 to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5, ptr %2, align 1
  %9 = tail call i32 @llvm.umin.i32(i32 %s, i32 20)
  %10 = trunc i32 %9 to i8
  %conv12 = zext i32 %9 to i64
  %add = add nsw i64 %5, %conv12
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %add)
  %cmp13 = icmp sgt i64 %add, 255
  %conv16 = sub i8 0, %conv
  %spec.select = select i1 %cmp13, i8 %conv16, i8 %10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %3, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call = call ptr @picolcd_send_and_wait(ptr noundef %13, i32 noundef 163, ptr noundef nonnull %raw_data, i32 noundef 3) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end20

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end3
  %in_report = getelementptr inbounds %struct.picolcd_pending, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %in_report to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in_report, align 4
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %if.end20.if.end41_crit_edge, label %land.lhs.true

if.end20.if.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end20
  %id = getelementptr inbounds %struct.hid_report, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %17)
  %cmp23 = icmp eq i32 %17, 50
  br i1 %cmp23, label %if.then25, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then25:                                        ; preds = %land.lhs.true
  %arrayidx27 = getelementptr %struct.picolcd_pending, ptr %call, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx27, align 2
  %conv28 = zext i8 %19 to i32
  %20 = call i32 @llvm.umin.i32(i32 %conv28, i32 %s)
  %add.ptr = getelementptr %struct.picolcd_pending, ptr %call, i32 0, i32 4, i32 3
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %20, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.76, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then25.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then25.copy_to_user.exit_crit_edge:            ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then25
  %21 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %u, i32 %20, i32 -1226833920) #15, !srcloc !181
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %20) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %u, ptr noundef %add.ptr, i32 noundef %20) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then25.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %20, %if.then25.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %20, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool36.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool36.not, label %if.else, label %copy_to_user.exit.if.end41_crit_edge

copy_to_user.exit.if.end41_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.else:                                          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv3866 = zext i32 %20 to i64
  %22 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %off, align 8
  %add39 = add i64 %23, %conv3866
  store i64 %add39, ptr %off, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else, %copy_to_user.exit.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end20.if.end41_crit_edge
  %ret.1 = phi i32 [ %20, %if.else ], [ -5, %land.lhs.true.if.end41_crit_edge ], [ -5, %if.end20.if.end41_crit_edge ], [ -14, %copy_to_user.exit.if.end41_crit_edge ]
  call void @kfree(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end41 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %raw_data) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_debug_eeprom_write(ptr nocapture noundef readonly %f, ptr noundef %u, i32 noundef %s, ptr nocapture noundef %off) #0 align 64 {
entry:
  %raw_data = alloca [23 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %raw_data) #10
  %2 = getelementptr inbounds [23 x i8], ptr %raw_data, i32 0, i32 1
  %3 = getelementptr inbounds [23 x i8], ptr %raw_data, i32 0, i32 2
  %4 = getelementptr inbounds [23 x i8], ptr %raw_data, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s)
  %cmp = icmp eq i32 %s, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %6)
  %cmp1 = icmp sgt i64 %6, 255
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = getelementptr inbounds i8, ptr %raw_data, i32 3
  %8 = call ptr @memset(ptr %7, i32 0, i32 20)
  %conv = trunc i64 %6 to i8
  %9 = ptrtoint ptr %raw_data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %raw_data, align 1
  %10 = lshr i64 %6, 8
  %conv5 = trunc i64 %10 to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %2, align 1
  %12 = tail call i32 @llvm.umin.i32(i32 %s, i32 20)
  %13 = trunc i32 %12 to i8
  %conv12 = zext i32 %12 to i64
  %add = add nsw i64 %6, %conv12
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %add)
  %cmp13 = icmp sgt i64 %add, 255
  %conv16 = sub i8 0, %conv
  %spec.select = select i1 %cmp13, i8 %conv16, i8 %13
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select, ptr %3, align 1
  %15 = tail call i8 @llvm.umin.i8(i8 %spec.select, i8 20)
  %cond31 = zext i8 %15 to i32
  call void @__check_object_size(ptr noundef %4, i32 noundef %cond31, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.76, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end3.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end3.if.end.i.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end3
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %u, i32 %cond31, i32 -1226833920) #15, !srcloc !176
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !177

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef %cond31) #10
  %17 = call i32 @llvm.read_register.i32(metadata !166) #10
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !178
  %and.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %4, ptr noundef %u, i32 noundef %cond31) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #10, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end3.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %cond31, %if.end3.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %cond31, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end33, label %if.then11.i.i, !prof !177

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %cond31, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %sub.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end33:                                         ; preds = %if.end.i.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call35 = call ptr @picolcd_send_and_wait(ptr noundef %22, i32 noundef 164, ptr noundef nonnull %raw_data, i32 noundef 23) #10
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %if.end38

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %in_report = getelementptr inbounds %struct.picolcd_pending, ptr %call35, i32 0, i32 1
  %23 = ptrtoint ptr %in_report to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %in_report, align 4
  %tobool39.not = icmp eq ptr %24, null
  br i1 %tobool39.not, label %if.end38.if.end60_crit_edge, label %land.lhs.true

if.end38.if.end60_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

land.lhs.true:                                    ; preds = %if.end38
  %id = getelementptr inbounds %struct.hid_report, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %26)
  %cmp41 = icmp eq i32 %26, 50
  br i1 %cmp41, label %if.then43, label %land.lhs.true.if.end60_crit_edge

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then43:                                        ; preds = %land.lhs.true
  %raw_data45 = getelementptr inbounds %struct.picolcd_pending, ptr %call35, i32 0, i32 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %3, align 1
  %conv48 = zext i8 %28 to i32
  %add49 = add nuw nsw i32 %conv48, 3
  %bcmp = call i32 @bcmp(ptr noundef nonnull %raw_data, ptr noundef %raw_data45, i32 %add49) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp51 = icmp eq i32 %bcmp, 0
  br i1 %cmp51, label %if.then53, label %if.then43.if.end60_crit_edge

if.then43.if.end60_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then53:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %conv55 = zext i8 %28 to i64
  %29 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %off, align 8
  %add56 = add i64 %30, %conv55
  store i64 %add56, ptr %off, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then53, %if.then43.if.end60_crit_edge, %land.lhs.true.if.end60_crit_edge, %if.end38.if.end60_crit_edge
  %ret.0 = phi i32 [ %conv48, %if.then53 ], [ -5, %if.then43.if.end60_crit_edge ], [ -5, %land.lhs.true.if.end60_crit_edge ], [ -5, %if.end38.if.end60_crit_edge ]
  call void @kfree(ptr noundef nonnull %call35) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end33.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end60 ], [ -22, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ -5, %if.end33.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %raw_data) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @picolcd_send_and_wait(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_debug_flash_read(ptr nocapture noundef readonly %f, ptr noundef %u, i32 noundef %s, ptr nocapture noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s)
  %cmp = icmp eq i32 %s, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 24575, i64 %3)
  %cmp1 = icmp sgt i64 %3, 24575
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %s to i64
  %add = add nsw i64 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 24575, i64 %add)
  %cmp4 = icmp sgt i64 %add, 24575
  %4 = trunc i64 %3 to i32
  %conv7 = sub i32 24576, %4
  %s.addr.0 = select i1 %cmp4, i32 %conv7, i32 %s
  %status = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 179, i32 243
  %call10 = tail call fastcc i32 @_picolcd_flash_read(ptr noundef %1, i32 noundef %., ptr noundef %u, i32 noundef %s.addr.0, ptr noundef %off)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call10, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_debug_flash_write(ptr nocapture noundef readonly %f, ptr noundef %u, i32 noundef %s, ptr nocapture noundef %off) #0 align 64 {
entry:
  %raw_data.i54 = alloca [36 x i8], align 1
  %raw_data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s)
  %cmp = icmp eq i32 %s, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 24575, i64 %3)
  %cmp1 = icmp sgt i64 %3, 24575
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and = and i32 %s, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and6 = and i64 %3, 63
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  %or.cond = select i1 %tobool.not, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %while.body.lr.ph, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end3
  %status = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %and10 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %. = select i1 %tobool11.not, i32 178, i32 242
  %.53 = select i1 %tobool11.not, i32 180, i32 244
  %mutex_flash = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex_flash, i32 noundef 0) #10
  %6 = getelementptr inbounds [3 x i8], ptr %raw_data.i, i32 0, i32 2
  %7 = getelementptr inbounds [3 x i8], ptr %raw_data.i, i32 0, i32 1
  %addr_sz.i.i = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 5
  %8 = getelementptr inbounds i8, ptr %raw_data.i54, i32 2
  %arrayidx3.i.i = getelementptr inbounds i8, ptr %raw_data.i54, i32 1
  br label %while.body

while.cond:                                       ; preds = %if.end21
  %sub = add i32 %s.addr.093, -64
  %cmp14.not = icmp eq i32 %sub, 0
  br i1 %cmp14.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %ret.094 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %while.cond.while.body_crit_edge ]
  %s.addr.093 = phi i32 [ %s, %while.body.lr.ph ], [ %sub, %while.cond.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %raw_data.i) #10
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %6, align 1, !annotation !182
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %off, align 8
  %and.i = and i64 %11, 63
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %_picolcd_flash_erase64.exit.thread

_picolcd_flash_erase64.exit.thread:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %raw_data.i) #10
  br label %while.end

if.end.i:                                         ; preds = %while.body
  %conv.i.i = trunc i64 %11 to i8
  %12 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i.i, ptr %raw_data.i, align 1
  %13 = lshr i64 %11, 8
  %conv2.i.i = trunc i64 %13 to i8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv2.i.i, ptr %7, align 1
  %15 = ptrtoint ptr %addr_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr_sz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i._picolcd_flash_setaddr.exit.i_crit_edge

if.end.i._picolcd_flash_setaddr.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_picolcd_flash_setaddr.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = lshr i64 %11, 16
  %conv7.i.i = trunc i64 %17 to i8
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv7.i.i, ptr %6, align 1
  br label %_picolcd_flash_setaddr.exit.i

_picolcd_flash_setaddr.exit.i:                    ; preds = %if.then.i.i, %if.end.i._picolcd_flash_setaddr.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp10.i.i = icmp eq i32 %16, 2
  %cond.i.i = select i1 %cmp10.i.i, i32 2, i32 3
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call2.i = call ptr @picolcd_send_and_wait(ptr noundef %20, i32 noundef %., ptr noundef nonnull %raw_data.i, i32 noundef %cond.i.i) #10
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %_picolcd_flash_setaddr.exit.i._picolcd_flash_erase64.exit.thread72_crit_edge, label %lor.lhs.false.i

_picolcd_flash_setaddr.exit.i._picolcd_flash_erase64.exit.thread72_crit_edge: ; preds = %_picolcd_flash_setaddr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_picolcd_flash_erase64.exit.thread72

lor.lhs.false.i:                                  ; preds = %_picolcd_flash_setaddr.exit.i
  %in_report.i = getelementptr inbounds %struct.picolcd_pending, ptr %call2.i, i32 0, i32 1
  %21 = ptrtoint ptr %in_report.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in_report.i, align 4
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i._picolcd_flash_erase64.exit.thread72_crit_edge, label %if.end6.i

lor.lhs.false.i._picolcd_flash_erase64.exit.thread72_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_picolcd_flash_erase64.exit.thread72

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %id.i = getelementptr inbounds %struct.hid_report, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %24, label %if.end6.i._picolcd_flash_erase64.exit.thread72_crit_edge [
    i32 65, label %if.end6.i.if.then14.i_crit_edge
    i32 242, label %if.end6.i.if.then14.i_crit_edge139
  ]

if.end6.i.if.then14.i_crit_edge139:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.end6.i.if.then14.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.end6.i._picolcd_flash_erase64.exit.thread72_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_picolcd_flash_erase64.exit.thread72

if.then14.i:                                      ; preds = %if.end6.i.if.then14.i_crit_edge, %if.end6.i.if.then14.i_crit_edge139
  %raw_data16.i = getelementptr inbounds %struct.picolcd_pending, ptr %call2.i, i32 0, i32 4
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %raw_data.i, ptr noundef dereferenceable(2) %raw_data16.i, i32 %cond.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp19.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp19.not.i, label %if.end17, label %if.then14.i._picolcd_flash_erase64.exit.thread72_crit_edge

if.then14.i._picolcd_flash_erase64.exit.thread72_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_picolcd_flash_erase64.exit.thread72

_picolcd_flash_erase64.exit.thread72:             ; preds = %if.then14.i._picolcd_flash_erase64.exit.thread72_crit_edge, %if.end6.i._picolcd_flash_erase64.exit.thread72_crit_edge, %lor.lhs.false.i._picolcd_flash_erase64.exit.thread72_crit_edge, %_picolcd_flash_setaddr.exit.i._picolcd_flash_erase64.exit.thread72_crit_edge
  call void @kfree(ptr noundef %call2.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %raw_data.i) #10
  br label %while.end

if.end17:                                         ; preds = %if.then14.i
  call void @kfree(ptr noundef nonnull %call2.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %raw_data.i) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %raw_data.i54) #10
  %26 = call ptr @memset(ptr %8, i32 255, i32 34)
  br label %while.body.i

while.body.i:                                     ; preds = %skip.i69.while.body.i_crit_edge, %if.end17
  %ret.024.i = phi i32 [ 0, %if.end17 ], [ %add46.i, %skip.i69.while.body.i_crit_edge ]
  %s.addr.023.i = phi i32 [ 64, %if.end17 ], [ %sub.i, %skip.i69.while.body.i_crit_edge ]
  %27 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %off, align 8
  %conv.i.i56 = trunc i64 %28 to i8
  %29 = ptrtoint ptr %raw_data.i54 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i.i56, ptr %raw_data.i54, align 1
  %30 = lshr i64 %28, 8
  %conv2.i.i57 = trunc i64 %30 to i8
  %31 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv2.i.i57, ptr %arrayidx3.i.i, align 1
  %32 = ptrtoint ptr %addr_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr_sz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i.i58 = icmp eq i32 %33, 3
  br i1 %cmp.i.i58, label %if.then.i1.i, label %while.body.i._picolcd_flash_setaddr.exit.i62_crit_edge

while.body.i._picolcd_flash_setaddr.exit.i62_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_picolcd_flash_setaddr.exit.i62

if.then.i1.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = lshr i64 %28, 16
  %conv7.i.i59 = trunc i64 %34 to i8
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv7.i.i59, ptr %8, align 1
  br label %_picolcd_flash_setaddr.exit.i62

_picolcd_flash_setaddr.exit.i62:                  ; preds = %if.then.i1.i, %while.body.i._picolcd_flash_setaddr.exit.i62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp10.i.i60 = icmp eq i32 %33, 2
  %cond.i.i61 = select i1 %cmp10.i.i60, i32 2, i32 3
  %36 = call i32 @llvm.umin.i32(i32 %s.addr.023.i, i32 32) #10
  %conv3.i = trunc i32 %36 to i8
  %arrayidx.i = getelementptr [36 x i8], ptr %raw_data.i54, i32 0, i32 %cond.i.i61
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv3.i, ptr %arrayidx.i, align 1
  %add.ptr5.i = getelementptr i8, ptr %arrayidx.i, i32 1
  call void @__check_object_size(ptr noundef %add.ptr5.i, i32 noundef %36, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.76, i32 noundef 156) #10
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %_picolcd_flash_setaddr.exit.i62._picolcd_flash_write.exit_crit_edge, label %land.lhs.true.i.i.i

_picolcd_flash_setaddr.exit.i62._picolcd_flash_write.exit_crit_edge: ; preds = %_picolcd_flash_setaddr.exit.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %_picolcd_flash_write.exit

land.lhs.true.i.i.i:                              ; preds = %_picolcd_flash_setaddr.exit.i62
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %u, i32 %36, i32 -1226833920) #15, !srcloc !176
  %asmresult.i.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i._picolcd_flash_write.exit_crit_edge, !prof !177

land.lhs.true.i.i.i._picolcd_flash_write.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_picolcd_flash_write.exit

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr5.i, i32 noundef %36) #10
  %39 = call i32 @llvm.read_register.i32(metadata !166) #10
  %and.i.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !178
  %and.i.i.i.i.i = and i32 %41, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %add.ptr5.i, ptr noundef %u, i32 noundef %36) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #10, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i64, label %if.end.i.i.i._picolcd_flash_write.exit_crit_edge, !prof !177

if.end.i.i.i._picolcd_flash_write.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_picolcd_flash_write.exit

if.end.i64:                                       ; preds = %if.end.i.i.i
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.i = add nuw nsw i32 %cond.i.i61, 1
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  %conv11.i = zext i8 %45 to i32
  %add12.i = add nuw nsw i32 %add.i, %conv11.i
  %call13.i = call ptr @picolcd_send_and_wait(ptr noundef %43, i32 noundef %.53, ptr noundef nonnull %raw_data.i54, i32 noundef %add12.i) #10
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.end.i64.skip.thread.i_crit_edge, label %lor.lhs.false.i66

if.end.i64.skip.thread.i_crit_edge:               ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip.thread.i

lor.lhs.false.i66:                                ; preds = %if.end.i64
  %in_report.i65 = getelementptr inbounds %struct.picolcd_pending, ptr %call13.i, i32 0, i32 1
  %46 = ptrtoint ptr %in_report.i65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %in_report.i65, align 4
  %tobool15.not.i = icmp eq ptr %47, null
  br i1 %tobool15.not.i, label %lor.lhs.false.i66.skip.thread.i_crit_edge, label %if.end17.i

lor.lhs.false.i66.skip.thread.i_crit_edge:        ; preds = %lor.lhs.false.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip.thread.i

if.end17.i:                                       ; preds = %lor.lhs.false.i66
  %id.i67 = getelementptr inbounds %struct.hid_report, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %id.i67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id.i67, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %49, label %if.end17.i.skip.thread.i_crit_edge [
    i32 65, label %if.end17.i.if.then26.i_crit_edge
    i32 244, label %if.end17.i.if.then26.i_crit_edge140
  ]

if.end17.i.if.then26.i_crit_edge140:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i

if.end17.i.if.then26.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i

if.end17.i.skip.thread.i_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip.thread.i

if.then26.i:                                      ; preds = %if.end17.i.if.then26.i_crit_edge, %if.end17.i.if.then26.i_crit_edge140
  %raw_data28.i = getelementptr inbounds %struct.picolcd_pending, ptr %call13.i, i32 0, i32 4
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i, align 1
  %conv32.i = zext i8 %52 to i32
  %add33.i = add nuw nsw i32 %add.i, %conv32.i
  %bcmp.i68 = call i32 @bcmp(ptr noundef nonnull %raw_data.i54, ptr noundef %raw_data28.i, i32 %add33.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i68)
  %cmp35.not.i = icmp eq i32 %bcmp.i68, 0
  br i1 %cmp35.not.i, label %skip.i69, label %if.then26.i.skip.thread.i_crit_edge

if.then26.i.skip.thread.i_crit_edge:              ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip.thread.i

skip.thread.i:                                    ; preds = %if.then26.i.skip.thread.i_crit_edge, %if.end17.i.skip.thread.i_crit_edge, %lor.lhs.false.i66.skip.thread.i_crit_edge, %if.end.i64.skip.thread.i_crit_edge
  call void @kfree(ptr noundef %call13.i) #10
  br label %_picolcd_flash_write.exit

skip.i69:                                         ; preds = %if.then26.i
  %conv40.i = zext i8 %52 to i64
  %53 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %off, align 8
  %add41.i = add i64 %54, %conv40.i
  store i64 %add41.i, ptr %off, align 8
  %sub.i = sub i32 %s.addr.023.i, %conv32.i
  %add46.i = add i32 %ret.024.i, %conv32.i
  call void @kfree(ptr noundef nonnull %call13.i) #10
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %skip.i69._picolcd_flash_write.exit_crit_edge, label %skip.i69.while.body.i_crit_edge

skip.i69.while.body.i_crit_edge:                  ; preds = %skip.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

skip.i69._picolcd_flash_write.exit_crit_edge:     ; preds = %skip.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %_picolcd_flash_write.exit

_picolcd_flash_write.exit:                        ; preds = %skip.i69._picolcd_flash_write.exit_crit_edge, %skip.thread.i, %if.end.i.i.i._picolcd_flash_write.exit_crit_edge, %land.lhs.true.i.i.i._picolcd_flash_write.exit_crit_edge, %_picolcd_flash_setaddr.exit.i62._picolcd_flash_write.exit_crit_edge
  %ret.014.i = phi i32 [ %ret.024.i, %skip.thread.i ], [ %ret.024.i, %if.end.i.i.i._picolcd_flash_write.exit_crit_edge ], [ %ret.024.i, %land.lhs.true.i.i.i._picolcd_flash_write.exit_crit_edge ], [ %ret.024.i, %_picolcd_flash_setaddr.exit.i62._picolcd_flash_write.exit_crit_edge ], [ %add46.i, %skip.i69._picolcd_flash_write.exit_crit_edge ]
  %err.2.i = phi i32 [ -5, %skip.thread.i ], [ -14, %if.end.i.i.i._picolcd_flash_write.exit_crit_edge ], [ -14, %land.lhs.true.i.i.i._picolcd_flash_write.exit_crit_edge ], [ -14, %_picolcd_flash_setaddr.exit.i62._picolcd_flash_write.exit_crit_edge ], [ 0, %skip.i69._picolcd_flash_write.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.014.i)
  %cmp51.i = icmp sgt i32 %ret.014.i, 0
  %ret.2.err.2.i = select i1 %cmp51.i, i32 %ret.014.i, i32 %err.2.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %raw_data.i54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.err.2.i)
  %cmp19 = icmp slt i32 %ret.2.err.2.i, 0
  br i1 %cmp19, label %_picolcd_flash_write.exit.while.end_crit_edge, label %if.end21

_picolcd_flash_write.exit.while.end_crit_edge:    ; preds = %_picolcd_flash_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end21:                                         ; preds = %_picolcd_flash_write.exit
  %add = add i32 %ret.2.err.2.i, %ret.094
  %conv75 = zext i32 %ret.2.err.2.i to i64
  %55 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %off, align 8
  %add22 = add i64 %56, %conv75
  store i64 %add22, ptr %off, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %ret.2.err.2.i)
  %cmp23.not = icmp eq i32 %ret.2.err.2.i, 64
  br i1 %cmp23.not, label %while.cond, label %if.end21.while.end_crit_edge

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %_picolcd_flash_write.exit.while.end_crit_edge, %_picolcd_flash_erase64.exit.thread72, %_picolcd_flash_erase64.exit.thread, %while.cond.while.end_crit_edge
  %err.1 = phi i32 [ -22, %_picolcd_flash_erase64.exit.thread ], [ -5, %_picolcd_flash_erase64.exit.thread72 ], [ 64, %while.cond.while.end_crit_edge ], [ %ret.2.err.2.i, %_picolcd_flash_write.exit.while.end_crit_edge ], [ %ret.2.err.2.i, %if.end21.while.end_crit_edge ]
  %ret.1 = phi i32 [ %ret.094, %_picolcd_flash_erase64.exit.thread ], [ %ret.094, %_picolcd_flash_erase64.exit.thread72 ], [ %add, %while.cond.while.end_crit_edge ], [ %ret.094, %_picolcd_flash_write.exit.while.end_crit_edge ], [ %add, %if.end21.while.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex_flash) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp28 = icmp sgt i32 %ret.1, 0
  %ret.1.err.1 = select i1 %cmp28, i32 %ret.1, i32 %err.1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1.err.1, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_picolcd_flash_read(ptr nocapture noundef readonly %data, i32 noundef %report_id, ptr noundef %u, i32 noundef %s, ptr nocapture noundef %off) unnamed_addr #0 align 64 {
entry:
  %raw_data = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_data) #10
  %0 = getelementptr inbounds [4 x i8], ptr %raw_data, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %raw_data, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s)
  %cmp.not95 = icmp eq i32 %s, 0
  %2 = getelementptr inbounds i8, ptr %raw_data, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -1, ptr %2, align 1
  br i1 %cmp.not95, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %addr_sz.i = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %skip.while.body_crit_edge, %while.body.lr.ph
  %ret.097 = phi i32 [ 0, %while.body.lr.ph ], [ %add42, %skip.while.body_crit_edge ]
  %s.addr.096 = phi i32 [ %s, %while.body.lr.ph ], [ %sub, %skip.while.body_crit_edge ]
  %4 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %off, align 8
  %conv.i = trunc i64 %5 to i8
  %6 = ptrtoint ptr %raw_data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %raw_data, align 1
  %7 = lshr i64 %5, 8
  %conv2.i = trunc i64 %7 to i8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2.i, ptr %0, align 1
  %9 = ptrtoint ptr %addr_sz.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i = icmp eq i32 %10, 3
  br i1 %cmp.i, label %if.then.i81, label %while.body._picolcd_flash_setaddr.exit_crit_edge

while.body._picolcd_flash_setaddr.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %_picolcd_flash_setaddr.exit

if.then.i81:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = lshr i64 %5, 16
  %conv7.i = trunc i64 %11 to i8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv7.i, ptr %1, align 1
  br label %_picolcd_flash_setaddr.exit

_picolcd_flash_setaddr.exit:                      ; preds = %if.then.i81, %while.body._picolcd_flash_setaddr.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp10.i = icmp eq i32 %10, 2
  %cond.i = select i1 %cmp10.i, i32 2, i32 3
  %13 = call i32 @llvm.umin.i32(i32 %s.addr.096, i32 32)
  %conv3 = trunc i32 %13 to i8
  %arrayidx = getelementptr [4 x i8], ptr %raw_data, i32 0, i32 %cond.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv3, ptr %arrayidx, align 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add = add nuw nsw i32 %cond.i, 1
  %call5 = call ptr @picolcd_send_and_wait(ptr noundef %16, i32 noundef %report_id, ptr noundef nonnull %raw_data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %_picolcd_flash_setaddr.exit.if.then45_crit_edge, label %lor.lhs.false

_picolcd_flash_setaddr.exit.if.then45_crit_edge:  ; preds = %_picolcd_flash_setaddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

lor.lhs.false:                                    ; preds = %_picolcd_flash_setaddr.exit
  %in_report = getelementptr inbounds %struct.picolcd_pending, ptr %call5, i32 0, i32 1
  %17 = ptrtoint ptr %in_report to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_report, align 4
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %lor.lhs.false.if.then45_crit_edge, label %if.end

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.end:                                           ; preds = %lor.lhs.false
  %id = getelementptr inbounds %struct.hid_report, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %20, label %if.end.if.then45_crit_edge [
    i32 65, label %if.end.if.then15_crit_edge
    i32 243, label %if.end.if.then15_crit_edge120
  ]

if.end.if.then15_crit_edge120:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.end.if.then45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.then15:                                        ; preds = %if.end.if.then15_crit_edge, %if.end.if.then15_crit_edge120
  %raw_data17 = getelementptr inbounds %struct.picolcd_pending, ptr %call5, i32 0, i32 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull %raw_data, ptr noundef %raw_data17, i32 %add) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp21.not = icmp eq i32 %bcmp, 0
  br i1 %cmp21.not, label %if.end24, label %if.then15.if.then45_crit_edge

if.then15.if.then45_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.end24:                                         ; preds = %if.then15
  %add.ptr = getelementptr i8, ptr %u, i32 %ret.097
  %add.ptr27 = getelementptr %struct.picolcd_pending, ptr %call5, i32 0, i32 4, i32 1
  %add.ptr28 = getelementptr i8, ptr %add.ptr27, i32 %cond.i
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv30 = zext i8 %23 to i32
  call void @__check_object_size(ptr noundef %add.ptr28, i32 noundef %conv30, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.76, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end24.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end24.copy_to_user.exit_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end24
  %24 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %conv30, i32 -1226833920) #15, !srcloc !181
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr28, i32 noundef %conv30) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %add.ptr28, i32 noundef %conv30) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end24.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %conv30, %if.end24.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %conv30, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool32.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool32.not, label %skip, label %copy_to_user.exit.if.then45_crit_edge

copy_to_user.exit.if.then45_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

skip:                                             ; preds = %copy_to_user.exit
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %conv36 = zext i8 %26 to i64
  %27 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %off, align 8
  %add37 = add i64 %28, %conv36
  store i64 %add37, ptr %off, align 8
  %conv39 = zext i8 %26 to i32
  %sub = sub i32 %s.addr.096, %conv39
  %add42 = add i32 %ret.097, %conv39
  call void @kfree(ptr noundef nonnull %call5) #10
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %skip.cleanup_crit_edge, label %skip.while.body_crit_edge

skip.while.body_crit_edge:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

skip.cleanup_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45:                                        ; preds = %copy_to_user.exit.if.then45_crit_edge, %if.then15.if.then45_crit_edge, %if.end.if.then45_crit_edge, %lor.lhs.false.if.then45_crit_edge, %_picolcd_flash_setaddr.exit.if.then45_crit_edge
  %err.0.ph = phi i32 [ -14, %copy_to_user.exit.if.then45_crit_edge ], [ -5, %if.end.if.then45_crit_edge ], [ -5, %_picolcd_flash_setaddr.exit.if.then45_crit_edge ], [ -5, %lor.lhs.false.if.then45_crit_edge ], [ -5, %if.then15.if.then45_crit_edge ]
  call void @kfree(ptr noundef %call5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.097)
  %cmp46 = icmp sgt i32 %ret.097, 0
  %ret.1.err.0 = select i1 %cmp46, i32 %ret.097, i32 %err.0.ph
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %skip.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1.err.0, %if.then45 ], [ 0, %entry.cleanup_crit_edge ], [ %add42, %skip.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_data) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !113, !115, !117, !119, !120, !121, !122, !123, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !156, !158, !160, !162, !164}
!llvm.named.register.sp = !{!166}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 406, i32 26}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 417, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 418, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 420, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 426, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 428, i32 27}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 434, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 436, i32 27}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 442, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 444, i32 27}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 451, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 472, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 474, i32 27}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 477, i32 27}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 483, i32 4}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 491, i32 28}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 493, i32 28}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 497, i32 28}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 505, i32 4}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 509, i32 28}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 513, i32 28}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 517, i32 28}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 525, i32 4}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 535, i32 28}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 549, i32 4}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 594, i32 4}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 596, i32 27}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 603, i32 4}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 608, i32 4}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 613, i32 4}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 618, i32 4}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 632, i32 4}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 659, i32 27}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 660, i32 4}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 663, i32 28}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 666, i32 28}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 673, i32 4}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 676, i32 28}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 678, i32 28}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 681, i32 28}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 688, i32 4}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 691, i32 28}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 694, i32 28}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 700, i32 28}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 708, i32 4}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 731, i32 4}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 775, i32 27}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 781, i32 4}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 787, i32 4}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 793, i32 4}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 801, i32 27}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 804, i32 27}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 812, i32 27}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 815, i32 27}
!108 = !{ptr @picolcd_init_devfs.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 844, i32 2}
!110 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 848, i32 43}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 853, i32 44}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 863, i32 43}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 867, i32 3}
!119 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @picolcd_init_devfs._entry, !118, !"_entry", i1 false, i1 false}
!124 = !{ptr @picolcd_init_devfs._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 363, i32 2}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 363, i32 13}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 363, i32 34}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 363, i32 50}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 364, i32 2}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 364, i32 24}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 364, i32 41}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 365, i32 2}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 365, i32 28}
!143 = !{ptr @error_codes, !144, !"error_codes", i1 false, i1 false}
!144 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 362, i32 27}
!145 = !{ptr @picolcd_debug_reset_fops, !146, !"picolcd_debug_reset_fops", i1 false, i1 false}
!146 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 60, i32 37}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 49, i32 18}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 52, i32 25}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!153 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 26, i32 17}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 28, i32 17}
!162 = !{ptr @picolcd_debug_eeprom_fops, !163, !"picolcd_debug_eeprom_fops", i1 false, i1 false}
!163 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 157, i32 37}
!164 = !{ptr @picolcd_debug_flash_fops, !165, !"picolcd_debug_flash_fops", i1 false, i1 false}
!165 = !{!"../drivers/hid/hid-picolcd_debugfs.c", i32 350, i32 37}
!166 = !{!"sp"}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{i64 2153197671, i64 2153197696}
!177 = !{!"branch_weights", i32 2000, i32 1}
!178 = !{i64 5693226}
!179 = !{i64 5693423}
!180 = !{i64 2153178656}
!181 = !{i64 2153198352, i64 2153198377}
!182 = !{!"auto-init"}
