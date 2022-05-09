; ModuleID = '/llk/IR_all_yes/drivers/misc/eeprom/idt_89hpesx.c_pt.bc'
source_filename = "../drivers/misc/eeprom/idt_89hpesx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.idt_89hpesx_dev = type { i32, i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.mutex, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idt_smb_seq = type { i8, i8, ptr }
%struct.idt_csr_seq = type <{ i8, i16, i32 }>
%struct.idt_eeprom_seq = type <{ i8, i8, i16, i8 }>
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__UNIQUE_ID_description288 = internal constant [65 x i8] c"idt_89hpesx.description=IDT 89HPESx SMBus-slave interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version289 = internal constant [24 x i8] c"idt_89hpesx.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idt_89hpesx\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file290 = internal constant [49 x i8] c"idt_89hpesx.file=drivers/misc/eeprom/idt_89hpesx\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [27 x i8] c"idt_89hpesx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [31 x i8] c"idt_89hpesx.author=T-platforms\00", section ".modinfo", align 1
@__initcall__kmod_idt_89hpesx__299_1574_idt_init6 = internal global ptr @idt_init, section ".initcall6.init", align 4
@csr_dbgdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@idt_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @idt_probe, ptr @idt_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @idt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @idt_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_idt_exit = internal global ptr @idt_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"idt_csr\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"89hpesx\00", [24 x i8] zeroinitializer }, align 32
@idt_of_match = internal constant { [47 x %struct.of_device_id], [2276 x i8] } { [47 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes8nt2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes12nt3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes24nt6ag2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes32nt8ag2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes32nt8bg2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes12nt12g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes16nt16g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes24nt24g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes32nt24ag2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes32nt24bg2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes12n3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes12n3a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes24n3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes24n3a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes32h8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes32h8g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes48h12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes48h12g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes48h12ag2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes16h16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes22h16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes22h16g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes34h16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes34h16g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes64h16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes64h16g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes64h16ag2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes12t3g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes24t3g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes16t4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes4t4g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes10t4g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes16t4g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes16t4ag2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes5t5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes6t5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes8t5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes8t5a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes24t6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes6t6g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes24t6g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes16t7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes32t8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes32t8g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes48t12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,89hpes48t12g2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [2276 x i8] zeroinitializer }, align 32
@idt_ids = internal constant { [47 x %struct.i2c_device_id], [280 x i8] } { [47 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"89hpes8nt2\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes12nt3\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes24nt6ag2\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes32nt8ag2\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes32nt8bg2\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes12nt12g2\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes16nt16g2\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes24nt24g2\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes32nt24ag2\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes32nt24bg2\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes12n3\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes12n3a\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes24n3\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes24n3a\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes32h8\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes32h8g2\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes48h12\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes48h12g2\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes48h12ag2\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes16h16\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes22h16\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes22h16g2\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes34h16\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes34h16g2\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes64h16\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes64h16g2\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes64h16ag2\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes12t3g2\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes24t3g2\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes16t4\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes4t4g2\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes10t4g2\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes16t4g2\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes16t4ag2\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes5t5\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes6t5\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes8t5\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes8t5a\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes24t6\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes6t6g2\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes24t6g2\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes16t7\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes32t8\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes32t8g2\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes48t12\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"89hpes48t12g2\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [280 x i8] zeroinitializer }, align 32
@idt_get_fw_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1101, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Skip unsupported EEPROM device %pfw\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"idt_get_fw_data\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/misc/eeprom/idt_89hpesx.c\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@idt_get_fw_data._entry_ptr = internal global ptr @idt_get_fw_data._entry, section ".printk_index", align 4
@idt_get_fw_data._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1106, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No fwnode, EEPROM access disabled\00", [62 x i8] zeroinitializer }, align 32
@idt_get_fw_data._entry_ptr.12 = internal global ptr @idt_get_fw_data._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@idt_get_fw_data._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 1118, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"No EEPROM reg found, use default address 0x%x\00", [50 x i8] zeroinitializer }, align 32
@idt_get_fw_data._entry_ptr.16 = internal global ptr @idt_get_fw_data._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@idt_get_fw_data._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.7, i32 1134, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"EEPROM of %d bytes found by 0x%x\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@idt_get_fw_data._entry_ptr.21 = internal global ptr @idt_get_fw_data._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@ee_ids = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"24c32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4096 }, %struct.i2c_device_id { [20 x i8] c"24c64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8192 }, %struct.i2c_device_id { [20 x i8] c"24c128\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16384 }, %struct.i2c_device_id { [20 x i8] c"24c256\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32768 }, %struct.i2c_device_id { [20 x i8] c"24c512\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 65536 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@idt_set_smbus_ops.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.7, ptr @.str.25, i8 1, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"idt_set_smbus_ops\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SMBus block-read op chosen\00", [37 x i8] zeroinitializer }, align 32
@idt_set_smbus_ops.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.7, ptr @.str.26, i8 1, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SMBus i2c-block-read op chosen\00", [33 x i8] zeroinitializer }, align 32
@idt_set_smbus_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.7, i32 1207, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Use slow word/byte SMBus read ops\00", [62 x i8] zeroinitializer }, align 32
@idt_set_smbus_ops._entry_ptr = internal global ptr @idt_set_smbus_ops._entry, section ".printk_index", align 4
@idt_set_smbus_ops._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.7, i32 1211, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Use slow byte SMBus read op\00", [36 x i8] zeroinitializer }, align 32
@idt_set_smbus_ops._entry_ptr.30 = internal global ptr @idt_set_smbus_ops._entry.28, section ".printk_index", align 4
@idt_set_smbus_ops._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.7, i32 1213, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No supported SMBus read op\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@idt_set_smbus_ops._entry_ptr.34 = internal global ptr @idt_set_smbus_ops._entry.31, section ".printk_index", align 4
@idt_set_smbus_ops.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.7, ptr @.str.35, i8 1, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SMBus block-write op chosen\00", [36 x i8] zeroinitializer }, align 32
@idt_set_smbus_ops.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.7, ptr @.str.36, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SMBus i2c-block-write op chosen\00", [32 x i8] zeroinitializer }, align 32
@idt_set_smbus_ops._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.24, ptr @.str.7, i32 1231, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Use slow word/byte SMBus write op\00", [62 x i8] zeroinitializer }, align 32
@idt_set_smbus_ops._entry_ptr.39 = internal global ptr @idt_set_smbus_ops._entry.37, section ".printk_index", align 4
@idt_set_smbus_ops._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.24, ptr @.str.7, i32 1235, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Use slow byte SMBus write op\00", [35 x i8] zeroinitializer }, align 32
@idt_set_smbus_ops._entry_ptr.42 = internal global ptr @idt_set_smbus_ops._entry.40, section ".printk_index", align 4
@idt_set_smbus_ops._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.24, ptr @.str.7, i32 1237, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No supported SMBus write op\00", [36 x i8] zeroinitializer }, align 32
@idt_set_smbus_ops._entry_ptr.45 = internal global ptr @idt_set_smbus_ops._entry.43, section ".printk_index", align 4
@idt_set_smbus_ops.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pdev->smb_mtx\00", [17 x i8] zeroinitializer }, align 32
@idt_check_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.7, i32 1261, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to read VID/DID\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idt_check_dev\00", [18 x i8] zeroinitializer }, align 32
@idt_check_dev._entry_ptr = internal global ptr @idt_check_dev._entry, section ".printk_index", align 4
@idt_check_dev._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.7, i32 1267, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Got unsupported VID/DID: 0x%08x\00", [32 x i8] zeroinitializer }, align 32
@idt_check_dev._entry_ptr.51 = internal global ptr @idt_check_dev._entry.49, section ".printk_index", align 4
@idt_check_dev._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.7, i32 1272, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Found IDT 89HPES device VID:0x%04x, DID:0x%04x\00", [49 x i8] zeroinitializer }, align 32
@idt_check_dev._entry_ptr.54 = internal global ptr @idt_check_dev._entry.52, section ".printk_index", align 4
@idt_csr_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.7, i32 805, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to init csr address 0x%04x\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idt_csr_read\00", [19 x i8] zeroinitializer }, align 32
@idt_csr_read._entry_ptr = internal global ptr @idt_csr_read._entry, section ".printk_index", align 4
@idt_csr_read._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.7, i32 814, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read csr 0x%04hx\00", [37 x i8] zeroinitializer }, align 32
@idt_csr_read._entry_ptr.59 = internal global ptr @idt_csr_read._entry.57, section ".printk_index", align 4
@idt_csr_read._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.7, i32 820, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IDT failed to perform CSR r/w\00", [34 x i8] zeroinitializer }, align 32
@idt_csr_read._entry_ptr.62 = internal global ptr @idt_csr_read._entry.60, section ".printk_index", align 4
@idt_create_sysfs_files.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.63, ptr @.str.7, ptr @.str.64, i8 1, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"idt_create_sysfs_files\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Skip creating sysfs-files\00", [38 x i8] zeroinitializer }, align 32
@bin_attr_eeprom = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 4096, ptr null, ptr null, ptr @eeprom_read, ptr @eeprom_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@idt_create_sysfs_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.7, i32 1310, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to create EEPROM sysfs-node\00", [61 x i8] zeroinitializer }, align 32
@idt_create_sysfs_files._entry_ptr = internal global ptr @idt_create_sysfs_files._entry, section ".printk_index", align 4
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@idt_eeprom_read_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.7, i32 570, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to init eeprom addr 0x%02hhx\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"idt_eeprom_read_byte\00", [43 x i8] zeroinitializer }, align 32
@idt_eeprom_read_byte._entry_ptr = internal global ptr @idt_eeprom_read_byte._entry, section ".printk_index", align 4
@idt_eeprom_read_byte._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.7, i32 579, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read eeprom data 0x%02hhx\00", [60 x i8] zeroinitializer }, align 32
@idt_eeprom_read_byte._entry_ptr.71 = internal global ptr @idt_eeprom_read_byte._entry.69, section ".printk_index", align 4
@idt_eeprom_read_byte.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.7, ptr @.str.72, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"EEPROM busy, retry reading after %d ms\00", [57 x i8] zeroinitializer }, align 32
@idt_eeprom_read_byte._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.68, ptr @.str.7, i32 595, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Communication with eeprom failed, cmd 0x%hhx\00", [51 x i8] zeroinitializer }, align 32
@idt_eeprom_read_byte._entry_ptr.75 = internal global ptr @idt_eeprom_read_byte._entry.73, section ".printk_index", align 4
@idt_eeprom_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.7, i32 644, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to write 0x%04hx:0x%02hhx to eeprom\00", [53 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"idt_eeprom_write\00", [47 x i8] zeroinitializer }, align 32
@idt_eeprom_write._entry_ptr = internal global ptr @idt_eeprom_write._entry, section ".printk_index", align 4
@idt_eeprom_write._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.7, i32 660, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Values don't match 0x%02hhx != 0x%02hhx\00", [56 x i8] zeroinitializer }, align 32
@idt_eeprom_write._entry_ptr.80 = internal global ptr @idt_eeprom_write._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d-%04hx\00", [23 x i8] zeroinitializer }, align 32
@csr_dbgfs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @idt_dbgfs_csr_read, ptr @idt_dbgfs_csr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%05x:0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@idt_csr_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.7, i32 741, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to write 0x%04x: 0x%04x to csr\00", [58 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idt_csr_write\00", [18 x i8] zeroinitializer }, align 32
@idt_csr_write._entry_ptr = internal global ptr @idt_csr_write._entry, section ".printk_index", align 4
@idt_csr_write._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.84, ptr @.str.7, i32 751, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@idt_csr_write._entry_ptr.86 = internal global ptr @idt_csr_write._entry.85, section ".printk_index", align 4
@idt_csr_write._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.84, ptr @.str.7, i32 760, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read csr 0x%04x\00", [38 x i8] zeroinitializer }, align 32
@idt_csr_write._entry_ptr.89 = internal global ptr @idt_csr_write._entry.87, section ".printk_index", align 4
@idt_csr_write._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.84, ptr @.str.7, i32 766, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@idt_csr_write._entry_ptr.91 = internal global ptr @idt_csr_write._entry.90, section ".printk_index", align 4
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 59, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"csr_dbgdir\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 66, i32 23 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"idt_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1552, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1569, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1554, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant [13 x i8] c"idt_of_match\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1493, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant [8 x i8] c"idt_ids\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1436, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1101, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1106, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1115, i32 41 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1117, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1127, i32 40 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1133, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1069, i32 44 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"ee_ids\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1423, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1197, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1201, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1207, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1211, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1213, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1221, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1225, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1231, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1235, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1237, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1242, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1261, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1267, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1271, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 804, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 813, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 820, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1289, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [16 x i8] c"bin_attr_eeprom\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1310, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1027, i32 8 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 569, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 578, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 585, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 593, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 642, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 659, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1344, i32 31 }
@___asan_gen_.332 = private unnamed_addr constant [14 x i8] c"csr_dbgfs_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1032, i32 37 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1014, i32 36 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 740, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 750, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 759, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.357 = private constant [37 x i8] c"../drivers/misc/eeprom/idt_89hpesx.c\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 766, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__UNIQUE_ID_version289, ptr @__exitcall_idt_exit, ptr @__initcall__kmod_idt_89hpesx__299_1574_idt_init6, ptr @__modver_attr, ptr @idt_check_dev._entry, ptr @idt_check_dev._entry.49, ptr @idt_check_dev._entry.52, ptr @idt_check_dev._entry_ptr, ptr @idt_check_dev._entry_ptr.51, ptr @idt_check_dev._entry_ptr.54, ptr @idt_create_sysfs_files._entry, ptr @idt_create_sysfs_files._entry_ptr, ptr @idt_csr_read._entry, ptr @idt_csr_read._entry.57, ptr @idt_csr_read._entry.60, ptr @idt_csr_read._entry_ptr, ptr @idt_csr_read._entry_ptr.59, ptr @idt_csr_read._entry_ptr.62, ptr @idt_csr_write._entry, ptr @idt_csr_write._entry.85, ptr @idt_csr_write._entry.87, ptr @idt_csr_write._entry.90, ptr @idt_csr_write._entry_ptr, ptr @idt_csr_write._entry_ptr.86, ptr @idt_csr_write._entry_ptr.89, ptr @idt_csr_write._entry_ptr.91, ptr @idt_eeprom_read_byte._entry, ptr @idt_eeprom_read_byte._entry.69, ptr @idt_eeprom_read_byte._entry.73, ptr @idt_eeprom_read_byte._entry_ptr, ptr @idt_eeprom_read_byte._entry_ptr.71, ptr @idt_eeprom_read_byte._entry_ptr.75, ptr @idt_eeprom_write._entry, ptr @idt_eeprom_write._entry.78, ptr @idt_eeprom_write._entry_ptr, ptr @idt_eeprom_write._entry_ptr.80, ptr @idt_exit, ptr @idt_get_fw_data._entry, ptr @idt_get_fw_data._entry.10, ptr @idt_get_fw_data._entry.14, ptr @idt_get_fw_data._entry.18, ptr @idt_get_fw_data._entry_ptr, ptr @idt_get_fw_data._entry_ptr.12, ptr @idt_get_fw_data._entry_ptr.16, ptr @idt_get_fw_data._entry_ptr.21, ptr @idt_set_smbus_ops._entry, ptr @idt_set_smbus_ops._entry.28, ptr @idt_set_smbus_ops._entry.31, ptr @idt_set_smbus_ops._entry.37, ptr @idt_set_smbus_ops._entry.40, ptr @idt_set_smbus_ops._entry.43, ptr @idt_set_smbus_ops._entry_ptr, ptr @idt_set_smbus_ops._entry_ptr.30, ptr @idt_set_smbus_ops._entry_ptr.34, ptr @idt_set_smbus_ops._entry_ptr.39, ptr @idt_set_smbus_ops._entry_ptr.42, ptr @idt_set_smbus_ops._entry_ptr.45, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @csr_dbgdir, ptr @idt_driver, ptr @.str.3, ptr @.str.4, ptr @idt_of_match, ptr @idt_ids, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @ee_ids, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @idt_set_smbus_ops.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @bin_attr_eeprom, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @csr_dbgfs_ops, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.88], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csr_dbgdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_of_match to i32), i32 9212, i32 11488, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_ids to i32), i32 1128, i32 1408, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_get_fw_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_get_fw_data._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_get_fw_data._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_get_fw_data._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee_ids to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_set_smbus_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_set_smbus_ops._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_set_smbus_ops._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_set_smbus_ops._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_set_smbus_ops._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_set_smbus_ops._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_set_smbus_ops.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_check_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_check_dev._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_check_dev._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_csr_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_csr_read._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_csr_read._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_eeprom to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_create_sysfs_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_eeprom_read_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_eeprom_read_byte._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_eeprom_read_byte._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_eeprom_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_eeprom_write._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csr_dbgfs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_csr_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_csr_write._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_csr_write._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_csr_write._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @debugfs_initialized() #11
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef null) #11
  store ptr %call1, ptr @csr_dbgdir, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @idt_driver) #11
  ret i32 %call2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @idt_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @csr_dbgdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #11
  tail call void @i2c_del_driver(ptr noundef nonnull @idt_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %fname.i = alloca [32 x i8], align 1
  %viddid.i = alloca i32, align 4
  %compatible.i.i.i = alloca ptr, align 4
  %devname.i.i.i = alloca [20 x i8], align 1
  %eeprom_addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 124, i32 noundef 3264) #11
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i:                                         ; preds = %entry
  %client2.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %call.i, i32 0, i32 10
  %0 = ptrtoint ptr %client2.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client2.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eeprom_addr.i.i) #11
  %2 = ptrtoint ptr %eeprom_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %eeprom_addr.i.i, align 4, !annotation !191
  %call.i.i = tail call ptr @device_get_next_child_node(ptr noundef %dev.i, ptr noundef null) #11
  %tobool.not65.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not65.i.i, label %if.end.i.do.end9.i.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.do.end9.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

for.body.i.i:                                     ; preds = %do.end.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %fwnode.066.i.i = phi ptr [ %call4.i.i, %do.end.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compatible.i.i.i) #11
  %3 = ptrtoint ptr %compatible.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %compatible.i.i.i, align 4, !annotation !191
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %devname.i.i.i) #11
  %4 = call ptr @memset(ptr %devname.i.i.i, i32 255, i32 20)
  %call.i.i.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %fwnode.066.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %compatible.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i.do.end.i.i_crit_edge

for.body.i.i.do.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %5 = ptrtoint ptr %compatible.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %compatible.i.i.i, align 4
  %call1.i.i.i = call ptr @strchr(ptr noundef %6, i32 noundef 44) #11
  %tobool2.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 1
  %cond.i.i.i = select i1 %tobool2.not.i.i.i, ptr %6, ptr %add.ptr.i.i.i
  %call3.i.i.i = call i32 @strlcpy(ptr noundef nonnull %devname.i.i.i, ptr noundef %cond.i.i.i, i32 noundef 20) #11
  %call8.i.i.i = call i32 @strcmp(ptr noundef nonnull %devname.i.i.i, ptr noundef nonnull @ee_ids) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.if.end10.i.i_crit_edge, label %if.end10.i.i.i

if.end.i.i.i.if.end10.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

if.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  %call8.1.i.i.i = call i32 @strcmp(ptr noundef nonnull %devname.i.i.i, ptr noundef getelementptr inbounds ([6 x %struct.i2c_device_id], ptr @ee_ids, i32 0, i32 1)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i.i.i)
  %cmp.1.i.i.i = icmp eq i32 %call8.1.i.i.i, 0
  br i1 %cmp.1.i.i.i, label %if.end10.i.i.i.if.end10.i.i_crit_edge, label %if.end10.1.i.i.i

if.end10.i.i.i.if.end10.i.i_crit_edge:            ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

if.end10.1.i.i.i:                                 ; preds = %if.end10.i.i.i
  %call8.2.i.i.i = call i32 @strcmp(ptr noundef nonnull %devname.i.i.i, ptr noundef getelementptr inbounds ([6 x %struct.i2c_device_id], ptr @ee_ids, i32 0, i32 2)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2.i.i.i)
  %cmp.2.i.i.i = icmp eq i32 %call8.2.i.i.i, 0
  br i1 %cmp.2.i.i.i, label %if.end10.1.i.i.i.if.end10.i.i_crit_edge, label %if.end10.2.i.i.i

if.end10.1.i.i.i.if.end10.i.i_crit_edge:          ; preds = %if.end10.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

if.end10.2.i.i.i:                                 ; preds = %if.end10.1.i.i.i
  %call8.3.i.i.i = call i32 @strcmp(ptr noundef nonnull %devname.i.i.i, ptr noundef getelementptr inbounds ([6 x %struct.i2c_device_id], ptr @ee_ids, i32 0, i32 3)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.3.i.i.i)
  %cmp.3.i.i.i = icmp eq i32 %call8.3.i.i.i, 0
  br i1 %cmp.3.i.i.i, label %if.end10.2.i.i.i.if.end10.i.i_crit_edge, label %if.end10.3.i.i.i

if.end10.2.i.i.i.if.end10.i.i_crit_edge:          ; preds = %if.end10.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

if.end10.3.i.i.i:                                 ; preds = %if.end10.2.i.i.i
  %call8.4.i.i.i = call i32 @strcmp(ptr noundef nonnull %devname.i.i.i, ptr noundef getelementptr inbounds ([6 x %struct.i2c_device_id], ptr @ee_ids, i32 0, i32 4)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.4.i.i.i)
  %cmp.4.i.i.i = icmp eq i32 %call8.4.i.i.i, 0
  br i1 %cmp.4.i.i.i, label %if.end10.3.i.i.i.if.end10.i.i_crit_edge, label %if.end10.3.i.i.i.do.end.i.i_crit_edge

if.end10.3.i.i.i.do.end.i.i_crit_edge:            ; preds = %if.end10.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.end10.3.i.i.i.if.end10.i.i_crit_edge:          ; preds = %if.end10.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

do.end.i.i:                                       ; preds = %if.end10.3.i.i.i.do.end.i.i_crit_edge, %for.body.i.i.do.end.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %devname.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compatible.i.i.i) #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.5, ptr noundef nonnull %fwnode.066.i.i) #15
  %call4.i.i = call ptr @device_get_next_child_node(ptr noundef %dev.i, ptr noundef nonnull %fwnode.066.i.i) #11
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i.do.end9.i.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

do.end.i.i.do.end9.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %do.end.i.i.do.end9.i.i_crit_edge, %if.end.i.do.end9.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.11) #15
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %call.i, align 4
  %eero.i.i.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %eero.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %eero.i.i.i, align 4
  %inieecmd.i.i.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %inieecmd.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %inieecmd.i.i.i, align 2
  %eeaddr.i.i.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %eeaddr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %eeaddr.i.i.i, align 1
  br label %idt_get_fw_data.exit.i

if.end10.i.i:                                     ; preds = %if.end10.3.i.i.i.if.end10.i.i_crit_edge, %if.end10.2.i.i.i.if.end10.i.i_crit_edge, %if.end10.1.i.i.i.if.end10.i.i_crit_edge, %if.end10.i.i.i.if.end10.i.i_crit_edge, %if.end.i.i.i.if.end10.i.i_crit_edge
  %retval.0.i.ph.i.i = phi ptr [ getelementptr inbounds ([6 x %struct.i2c_device_id], ptr @ee_ids, i32 0, i32 3), %if.end10.2.i.i.i.if.end10.i.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.i2c_device_id], ptr @ee_ids, i32 0, i32 2), %if.end10.1.i.i.i.if.end10.i.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.i2c_device_id], ptr @ee_ids, i32 0, i32 1), %if.end10.i.i.i.if.end10.i.i_crit_edge ], [ @ee_ids, %if.end.i.i.i.if.end10.i.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.i2c_device_id], ptr @ee_ids, i32 0, i32 4), %if.end10.3.i.i.i.if.end10.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %devname.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compatible.i.i.i) #11
  %driver_data.i.i = getelementptr inbounds %struct.i2c_device_id, ptr %retval.0.i.ph.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call.i, align 4
  %call.i58.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %fwnode.066.i.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %eeprom_addr.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i58.i.i, 0
  br i1 %tobool12.not.i.i, label %lor.lhs.false.i.i, label %if.end10.i.i.do.end16.i.i_crit_edge

if.end10.i.i.do.end16.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16.i.i

lor.lhs.false.i.i:                                ; preds = %if.end10.i.i
  %14 = ptrtoint ptr %eeprom_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eeprom_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.do.end16.i.i_crit_edge, label %if.else.i.i

lor.lhs.false.i.i.do.end16.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16.i.i

do.end16.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end16.i.i_crit_edge, %if.end10.i.i.do.end16.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef 80) #15
  %inieecmd.i.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %inieecmd.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %inieecmd.i.i, align 2
  br label %if.end19.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inieecmd17.i.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %inieecmd17.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %inieecmd17.i.i, align 2
  %.tr.i.i = trunc i32 %15 to i8
  %conv.i.i = shl i8 %.tr.i.i, 1
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.else.i.i, %do.end16.i.i
  %conv.sink.i.i = phi i8 [ %conv.i.i, %if.else.i.i ], [ -96, %do.end16.i.i ]
  %eeaddr18.i.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %eeaddr18.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.sink.i.i, ptr %eeaddr18.i.i, align 1
  %call.i59.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %fwnode.066.i.i, ptr noundef nonnull @.str.17) #11
  %.sink.i.i = zext i1 %call.i59.i.i to i8
  %19 = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink.i.i, ptr %19, align 4
  call void @fwnode_handle_put(ptr noundef nonnull %fwnode.066.i.i) #11
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call.i, align 4
  %23 = ptrtoint ptr %eeaddr18.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %eeaddr18.i.i, align 1
  %conv30.i.i = zext i8 %24 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %22, i32 noundef %conv30.i.i) #15
  br label %idt_get_fw_data.exit.i

idt_get_fw_data.exit.i:                           ; preds = %if.end19.i.i, %do.end9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eeprom_addr.i.i) #11
  %inicsrcmd.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %inicsrcmd.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 15, ptr %inicsrcmd.i, align 1
  %csr.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %csr.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %csr.i, align 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 8
  %algo.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %algo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %algo.i.i.i, align 8
  %functionality.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %functionality.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %functionality.i.i.i, align 4
  %call.i.i20.i = call i32 %32(ptr noundef %28) #11
  %33 = and i32 %call.i.i20.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  %iniccode6.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %call.i, i32 0, i32 5
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %idt_get_fw_data.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %iniccode6.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -128, ptr %iniccode6.i, align 4
  %35 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %client, align 8
  %37 = or i16 %36, 4
  store i16 %37, ptr %client, align 8
  br label %idt_create_pdev.exit

if.else.i:                                        ; preds = %idt_get_fw_data.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %iniccode6.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %iniccode6.i, align 4
  br label %idt_create_pdev.exit

idt_create_pdev.exit:                             ; preds = %if.else.i, %if.then4.i
  %cmp.i24 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %idt_create_pdev.exit.if.then_crit_edge, label %if.end

idt_create_pdev.exit.if.then_crit_edge:           ; preds = %idt_create_pdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %idt_create_pdev.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i35 = phi ptr [ %call.i, %idt_create_pdev.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %39 = ptrtoint ptr %retval.0.i35 to i32
  br label %cleanup

if.end:                                           ; preds = %idt_create_pdev.exit
  %call3 = call fastcc i32 @idt_set_smbus_ops(ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end5, label %if.end.err_free_pdev_crit_edge

if.end.err_free_pdev_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_pdev

if.end5:                                          ; preds = %if.end
  %40 = ptrtoint ptr %client2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client2.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %viddid.i) #11
  %42 = ptrtoint ptr %viddid.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %viddid.i, align 4, !annotation !191
  %call.i25 = call fastcc i32 @idt_csr_read(ptr noundef %call.i, i16 noundef zeroext 0, ptr noundef nonnull %viddid.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp.not.i = icmp eq i32 %call.i25, 0
  br i1 %cmp.not.i, label %if.end.i26, label %do.end.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.47) #15
  br label %idt_check_dev.exit.thread

if.end.i26:                                       ; preds = %if.end5
  %43 = ptrtoint ptr %viddid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %viddid.i, align 4
  %and.i = and i32 %44, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4381, i32 %and.i)
  %cmp2.not.i = icmp eq i32 %and.i, 4381
  br i1 %cmp2.not.i, label %if.end9, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.50, i32 noundef %44) #15
  br label %idt_check_dev.exit.thread

idt_check_dev.exit.thread:                        ; preds = %do.end6.i, %do.end.i
  %retval.0.i27.ph = phi i32 [ -19, %do.end6.i ], [ %call.i25, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %viddid.i) #11
  br label %err_free_pdev

if.end9:                                          ; preds = %if.end.i26
  %shr.i = lshr i32 %44, 16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.53, i32 noundef 4381, i32 noundef %shr.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %viddid.i) #11
  %call10 = call fastcc i32 @idt_create_sysfs_files(ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end13, label %if.end9.err_free_pdev_crit_edge

if.end9.err_free_pdev_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_pdev

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %client2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %client2.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fname.i) #11
  %adapter.i29 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 3
  %47 = call ptr @memset(ptr %fname.i, i32 255, i32 32)
  %48 = ptrtoint ptr %adapter.i29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter.i29, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 1
  %52 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %53 to i32
  %call.i30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fname.i, i32 noundef 32, ptr noundef nonnull @.str.81, i32 noundef %51, i32 noundef %conv.i) #11
  %54 = load ptr, ptr @csr_dbgdir, align 4
  %call2.i = call ptr @debugfs_create_dir(ptr noundef nonnull %fname.i, ptr noundef %54) #11
  %csr_dir.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %call.i, i32 0, i32 12
  %55 = ptrtoint ptr %csr_dir.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call2.i, ptr %csr_dir.i, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 2
  %call5.i = call ptr @debugfs_create_file(ptr noundef %name.i, i16 noundef zeroext 384, ptr noundef %call2.i, ptr noundef %call.i, ptr noundef nonnull @csr_dbgfs_ops) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fname.i) #11
  br label %cleanup

err_free_pdev:                                    ; preds = %if.end9.err_free_pdev_crit_edge, %idt_check_dev.exit.thread, %if.end.err_free_pdev_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.err_free_pdev_crit_edge ], [ %call10, %if.end9.err_free_pdev_crit_edge ], [ %retval.0.i27.ph, %idt_check_dev.exit.thread ]
  %56 = ptrtoint ptr %client2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client2.i, align 4
  %driver_data.i.i.i32 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4, i32 8
  %58 = ptrtoint ptr %driver_data.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %driver_data.i.i.i32, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_pdev, %if.end13, %if.then
  %retval.0 = phi i32 [ %39, %if.then ], [ %ret.0, %err_free_pdev ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %csr_dir.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %csr_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr_dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %entry.idt_remove_sysfs_files.exit_crit_edge, label %if.end.i

entry.idt_remove_sysfs_files.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %idt_remove_sysfs_files.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %client.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %ee_file.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %ee_file.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ee_file.i, align 4
  tail call void @sysfs_remove_bin_file(ptr noundef %dev1.i, ptr noundef %9) #11
  br label %idt_remove_sysfs_files.exit

idt_remove_sysfs_files.exit:                      ; preds = %if.end.i, %entry.idt_remove_sysfs_files.exit_crit_edge
  %client.i3 = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %client.i3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i3, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver_data.i.i.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt_set_smbus_ops(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter1, align 8
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #11
  %8 = and i32 %call.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %smb_read = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 8
  %9 = ptrtoint ptr %smb_read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @idt_smb_read_block, ptr %smb_read, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_set_smbus_ops.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_set_smbus_ops, %if.then8)) #11
          to label %if.end54 [label %if.then8], !srcloc !192

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_set_smbus_ops.__UNIQUE_ID_ddebug294, ptr noundef %dev3, ptr noundef nonnull @.str.25) #11
  br label %if.end54

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i164 = getelementptr inbounds %struct.i2c_algorithm, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %functionality.i.i164 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %functionality.i.i164, align 4
  %call.i.i165 = tail call i32 %13(ptr noundef %3) #11
  %14 = and i32 %call.i.i165, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %if.else29, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %smb_read12 = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 8
  %15 = ptrtoint ptr %smb_read12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @idt_smb_read_i2c_block, ptr %smb_read12, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_set_smbus_ops.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_set_smbus_ops, %if.then25)) #11
          to label %if.end54 [label %if.then25], !srcloc !192

if.then25:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_set_smbus_ops.__UNIQUE_ID_ddebug295, ptr noundef %dev3, ptr noundef nonnull @.str.26) #11
  br label %if.end54

if.else29:                                        ; preds = %if.else
  %16 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i170 = getelementptr inbounds %struct.i2c_algorithm, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %functionality.i.i170 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %functionality.i.i170, align 4
  %call.i.i171 = tail call i32 %19(ptr noundef %3) #11
  %20 = and i32 %call.i.i171, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool31.not = icmp eq i32 %20, 0
  br i1 %tobool31.not, label %if.else29.if.else39_crit_edge, label %land.lhs.true

if.else29.if.else39_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else39

land.lhs.true:                                    ; preds = %if.else29
  %21 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i176 = getelementptr inbounds %struct.i2c_algorithm, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %functionality.i.i176 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %functionality.i.i176, align 4
  %call.i.i177 = tail call i32 %24(ptr noundef %3) #11
  %25 = and i32 %call.i.i177, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool33.not = icmp eq i32 %25, 0
  br i1 %tobool33.not, label %land.lhs.true.if.else39_crit_edge, label %if.then34

land.lhs.true.if.else39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else39

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %smb_read35 = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 8
  %26 = ptrtoint ptr %smb_read35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @idt_smb_read_word, ptr %smb_read35, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.27) #15
  br label %if.end54

if.else39:                                        ; preds = %land.lhs.true.if.else39_crit_edge, %if.else29.if.else39_crit_edge
  %27 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i182 = getelementptr inbounds %struct.i2c_algorithm, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %functionality.i.i182 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %functionality.i.i182, align 4
  %call.i.i183 = tail call i32 %30(ptr noundef %3) #11
  %31 = and i32 %call.i.i183, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool41.not = icmp eq i32 %31, 0
  br i1 %tobool41.not, label %do.end50, label %if.then42

if.then42:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #13
  %smb_read43 = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 8
  %32 = ptrtoint ptr %smb_read43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @idt_smb_read_byte, ptr %smb_read43, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.29) #15
  br label %if.end54

do.end50:                                         ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.32) #15
  br label %cleanup

if.end54:                                         ; preds = %if.then42, %if.then34, %if.then25, %if.then11, %if.then8, %if.then
  %33 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i188 = getelementptr inbounds %struct.i2c_algorithm, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %functionality.i.i188 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %functionality.i.i188, align 4
  %call.i.i189 = tail call i32 %36(ptr noundef %3) #11
  %37 = and i32 %call.i.i189, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool56.not = icmp eq i32 %37, 0
  br i1 %tobool56.not, label %if.else74, label %if.then57

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %smb_write = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 7
  %38 = ptrtoint ptr %smb_write to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @idt_smb_write_block, ptr %smb_write, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_set_smbus_ops.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_set_smbus_ops, %if.then70)) #11
          to label %do.body122 [label %if.then70], !srcloc !192

if.then70:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_set_smbus_ops.__UNIQUE_ID_ddebug296, ptr noundef %dev3, ptr noundef nonnull @.str.35) #11
  br label %do.body122

if.else74:                                        ; preds = %if.end54
  %39 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i194 = getelementptr inbounds %struct.i2c_algorithm, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %functionality.i.i194 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %functionality.i.i194, align 4
  %call.i.i195 = tail call i32 %42(ptr noundef %3) #11
  %43 = and i32 %call.i.i195, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool76.not = icmp eq i32 %43, 0
  br i1 %tobool76.not, label %if.else95, label %if.then77

if.then77:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  %smb_write78 = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 7
  %44 = ptrtoint ptr %smb_write78 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @idt_smb_write_i2c_block, ptr %smb_write78, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_set_smbus_ops.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_set_smbus_ops, %if.then91)) #11
          to label %do.body122 [label %if.then91], !srcloc !192

if.then91:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_set_smbus_ops.__UNIQUE_ID_ddebug297, ptr noundef %dev3, ptr noundef nonnull @.str.36) #11
  br label %do.body122

if.else95:                                        ; preds = %if.else74
  %45 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i200 = getelementptr inbounds %struct.i2c_algorithm, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %functionality.i.i200 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %functionality.i.i200, align 4
  %call.i.i201 = tail call i32 %48(ptr noundef %3) #11
  %49 = and i32 %call.i.i201, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool97.not = icmp eq i32 %49, 0
  br i1 %tobool97.not, label %if.else95.if.else106_crit_edge, label %land.lhs.true98

if.else95.if.else106_crit_edge:                   ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else106

land.lhs.true98:                                  ; preds = %if.else95
  %50 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i206 = getelementptr inbounds %struct.i2c_algorithm, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %functionality.i.i206 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %functionality.i.i206, align 4
  %call.i.i207 = tail call i32 %53(ptr noundef %3) #11
  %54 = and i32 %call.i.i207, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool100.not = icmp eq i32 %54, 0
  br i1 %tobool100.not, label %land.lhs.true98.if.else106_crit_edge, label %if.then101

land.lhs.true98.if.else106_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else106

if.then101:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #13
  %smb_write102 = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 7
  %55 = ptrtoint ptr %smb_write102 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @idt_smb_write_word, ptr %smb_write102, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.38) #15
  br label %do.body122

if.else106:                                       ; preds = %land.lhs.true98.if.else106_crit_edge, %if.else95.if.else106_crit_edge
  %56 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i212 = getelementptr inbounds %struct.i2c_algorithm, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %functionality.i.i212 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %functionality.i.i212, align 4
  %call.i.i213 = tail call i32 %59(ptr noundef %3) #11
  %60 = and i32 %call.i.i213, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool108.not = icmp eq i32 %60, 0
  br i1 %tobool108.not, label %do.end117, label %if.then109

if.then109:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #13
  %smb_write110 = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 7
  %61 = ptrtoint ptr %smb_write110 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @idt_smb_write_byte, ptr %smb_write110, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.41) #15
  br label %do.body122

do.end117:                                        ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.44) #15
  br label %cleanup

do.body122:                                       ; preds = %if.then109, %if.then101, %if.then91, %if.then77, %if.then70, %if.then57
  %smb_mtx = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %smb_mtx, ptr noundef nonnull @.str.46, ptr noundef nonnull @idt_set_smbus_ops.__key) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body122, %do.end117, %do.end50
  %retval.0 = phi i32 [ 0, %do.body122 ], [ -96, %do.end117 ], [ -96, %do.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt_create_sysfs_files(ptr nocapture noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_create_sysfs_files.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_create_sysfs_files, %if.then4)) #11
          to label %cleanup [label %if.then4], !srcloc !192

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_create_sysfs_files.__UNIQUE_ID_ddebug298, ptr noundef %dev1, ptr noundef nonnull @.str.64) #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3264) #11
  %ee_file = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 11
  %4 = ptrtoint ptr %ee_file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %ee_file, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %5 = call ptr @memcpy(ptr %call6, ptr @bin_attr_eeprom, i32 44)
  %eero = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 1
  %6 = ptrtoint ptr %eero to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eero, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %if.then13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.attribute, ptr %call6, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 4
  %10 = and i16 %9, -129
  store i16 %10, ptr %mode, align 4
  %write = getelementptr inbounds %struct.bin_attribute, ptr %call6, i32 0, i32 5
  %11 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %write, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdev, align 4
  %14 = ptrtoint ptr %ee_file to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ee_file, align 4
  %size = getelementptr inbounds %struct.bin_attribute, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %size, align 4
  %17 = load ptr, ptr %ee_file, align 4
  %call21 = tail call i32 @sysfs_create_bin_file(ptr noundef %dev1, ptr noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end17.cleanup_crit_edge, label %do.end27

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.65) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end17.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ %call21, %do.end27 ], [ 0, %if.then4 ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_smb_read_block(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bytecnt = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 1
  %0 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bytecnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp = icmp ugt i8 %1, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %seq, align 4
  %4 = or i8 %3, 67
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  %data = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %__retry.0 = phi i32 [ 128, %if.end ], [ %dec, %do.body.do.body_crit_edge ]
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call = tail call i32 @i2c_smbus_read_block_data(ptr noundef %6, i8 noundef zeroext %4, ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__retry.0)
  %tobool.not = icmp ne i32 %__retry.0, 0
  %dec = add nsw i32 %__retry.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bytecnt, align 1
  %conv10 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv10)
  %cmp11.not = icmp eq i32 %call, %conv10
  %spec.select = select i1 %cmp7, i32 %call, i32 -61
  %spec.select24 = select i1 %cmp11.not, i32 0, i32 %spec.select
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select24, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_smb_read_i2c_block(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %seq) #2 align 64 {
entry:
  %buf = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf) #11
  %0 = call ptr @memset(ptr %buf, i32 255, i32 33)
  %bytecnt = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 1
  %1 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bytecnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %2)
  %cmp = icmp ugt i8 %2, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %seq, align 4
  %5 = or i8 %4, 67
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %__retry.0 = phi i32 [ 128, %if.end ], [ %dec, %do.body.do.body_crit_edge ]
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %8 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bytecnt, align 1
  %add = add i8 %9, 1
  %call = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %7, i8 noundef zeroext %5, i8 noundef zeroext %add, ptr noundef nonnull %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__retry.0)
  %tobool.not = icmp ne i32 %__retry.0, 0
  %dec = add nsw i32 %__retry.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp slt i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.body
  %10 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bytecnt, align 1
  %conv13 = zext i8 %11 to i32
  %add14 = add nuw nsw i32 %conv13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %add14)
  %cmp15.not = icmp eq i32 %call, %add14
  br i1 %cmp15.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select = select i1 %cmp10, i32 %call, i32 -61
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %11)
  %cmp24.not = icmp eq i8 %13, %11
  br i1 %cmp24.not, label %if.end27, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 2
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %arrayidx28 = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %15, ptr %arrayidx28, i32 %conv13)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end20.cleanup_crit_edge, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then17 ], [ 0, %if.end27 ], [ -22, %entry.cleanup_crit_edge ], [ -61, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_smb_read_word(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bytecnt = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 1
  %0 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bytecnt, align 1
  %2 = and i8 %1, -2
  %sub = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp98.not = icmp eq i8 %2, 0
  br i1 %cmp98.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub12 = add nsw i32 %sub, -2
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  %data = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %for.body.lr.ph
  %idx.099 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end25.for.body_crit_edge ]
  %3 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.099)
  %cmp7 = icmp eq i32 %idx.099, 0
  %spec.select.v = select i1 %cmp7, i8 34, i8 32
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.099, i32 %sub12)
  %cmp13 = icmp eq i32 %idx.099, %sub12
  %5 = zext i1 %cmp13 to i8
  %spec.select = or i8 %spec.select.v, %5
  %ccode.1 = or i8 %spec.select, %4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body
  %__retry.0 = phi i32 [ 128, %for.body ], [ %dec, %do.body.do.body_crit_edge ]
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %call = tail call i32 @i2c_smbus_read_word_data(ptr noundef %7, i8 noundef zeroext %ccode.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__retry.0)
  %tobool.not = icmp ne i32 %__retry.0, 0
  %dec = add nsw i32 %__retry.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp20 = icmp slt i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp20, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.body
  br i1 %cmp20, label %do.end.cleanup_crit_edge, label %if.end25

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %conv26 = trunc i32 %call to i16
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %idx.099
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv26, ptr %arrayidx, align 2
  %add = add nuw nsw i32 %idx.099, 2
  %cmp = icmp ult i32 %add, %sub
  br i1 %cmp, label %if.end25.for.body_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %if.end25.for.end_crit_edge ]
  %11 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bytecnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %2)
  %cmp29.not = icmp eq i8 %12, %2
  br i1 %cmp29.not, label %for.end.cleanup_crit_edge, label %if.then31

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %for.end
  %13 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0.lcssa)
  %cmp37 = icmp eq i32 %idx.0.lcssa, 0
  %spec.select95.v = select i1 %cmp37, i8 3, i8 1
  %spec.select95 = or i8 %14, %spec.select95.v
  %client47 = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  br label %do.body46

do.body46:                                        ; preds = %do.body46.do.body46_crit_edge, %if.then31
  %__retry44.0 = phi i32 [ 128, %if.then31 ], [ %dec50, %do.body46.do.body46_crit_edge ]
  %15 = ptrtoint ptr %client47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client47, align 4
  %call48 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext %spec.select95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__retry44.0)
  %tobool51.not = icmp ne i32 %__retry44.0, 0
  %dec50 = add nsw i32 %__retry44.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp53 = icmp slt i32 %call48, 0
  %or.cond96 = select i1 %tobool51.not, i1 %cmp53, i1 false
  br i1 %or.cond96, label %do.body46.do.body46_crit_edge, label %do.end56

do.body46.do.body46_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body46

do.end56:                                         ; preds = %do.body46
  br i1 %cmp53, label %do.end56.cleanup_crit_edge, label %if.end61

do.end56.cleanup_crit_edge:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end61:                                         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #13
  %conv62 = trunc i32 %call48 to i8
  %data63 = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 2
  %17 = ptrtoint ptr %data63 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data63, align 4
  %arrayidx64 = getelementptr i8, ptr %18, i32 %idx.0.lcssa
  %19 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv62, ptr %arrayidx64, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end56.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %do.end56.cleanup_crit_edge ], [ 0, %if.end61 ], [ 0, %for.end.cleanup_crit_edge ], [ %call, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_smb_read_byte(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bytecnt = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 1
  %0 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bytecnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp41.not = icmp eq i8 %1, 0
  br i1 %cmp41.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %conv40 = zext i8 %1 to i32
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  %data = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.lr.ph
  %conv43 = phi i32 [ %conv40, %for.body.lr.ph ], [ %conv, %if.end24.for.body_crit_edge ]
  %idx.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end24.for.body_crit_edge ]
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.042)
  %cmp5 = icmp eq i32 %idx.042, 0
  %4 = or i8 %3, 2
  %spec.select = select i1 %cmp5, i8 %4, i8 %3
  %sub = add nsw i32 %conv43, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.042, i32 %sub)
  %cmp12 = icmp eq i32 %idx.042, %sub
  %5 = zext i1 %cmp12 to i8
  %ccode.1 = or i8 %spec.select, %5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body
  %__retry.0 = phi i32 [ 128, %for.body ], [ %dec, %do.body.do.body_crit_edge ]
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext %ccode.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__retry.0)
  %tobool.not = icmp ne i32 %__retry.0, 0
  %dec = add nsw i32 %__retry.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp19 = icmp slt i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp19, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.body
  br i1 %cmp19, label %do.end.cleanup_crit_edge, label %if.end24

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %do.end
  %conv25 = trunc i32 %call to i8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %idx.042
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv25, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %idx.042, 1
  %11 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bytecnt, align 1
  %conv = zext i8 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end24.for.body_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %if.end24.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ %call, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_smb_write_block(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bytecnt = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 1
  %0 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bytecnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp = icmp ugt i8 %1, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %seq, align 4
  %4 = or i8 %3, 67
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  %data = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %__retry.0 = phi i32 [ 128, %if.end ], [ %dec, %do.body.do.body_crit_edge ]
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %7 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bytecnt, align 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %call = tail call i32 @i2c_smbus_write_block_data(ptr noundef %6, i8 noundef zeroext %4, i8 noundef zeroext %8, ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__retry.0)
  %tobool.not = icmp ne i32 %__retry.0, 0
  %dec = add nsw i32 %__retry.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_smb_write_i2c_block(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %seq) #2 align 64 {
entry:
  %buf = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf) #11
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  %bytecnt = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 1
  %2 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bytecnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp = icmp ugt i8 %3, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %buf, align 1
  %arrayidx3 = getelementptr inbounds [33 x i8], ptr %buf, i32 0, i32 1
  %data = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %conv5 = zext i8 %3 to i32
  %7 = call ptr @memcpy(ptr %arrayidx3, ptr %6, i32 %conv5)
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %seq, align 4
  %10 = or i8 %9, 67
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %__retry.0 = phi i32 [ 128, %if.end ], [ %dec, %do.body.do.body_crit_edge ]
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 4
  %13 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bytecnt, align 1
  %add = add i8 %14, 1
  %call = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %12, i8 noundef zeroext %10, i8 noundef zeroext %add, ptr noundef nonnull %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__retry.0)
  %tobool.not = icmp ne i32 %__retry.0, 0
  %dec = add nsw i32 %__retry.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp14 = icmp slt i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp14, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_smb_write_word(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bytecnt = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 1
  %0 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bytecnt, align 1
  %2 = and i8 %1, -2
  %sub = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp94.not = icmp eq i8 %2, 0
  br i1 %cmp94.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub12 = add nsw i32 %sub, -2
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  %data = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.095 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.095)
  %cmp7 = icmp eq i32 %idx.095, 0
  %spec.select.v = select i1 %cmp7, i8 34, i8 32
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.095, i32 %sub12)
  %cmp13 = icmp eq i32 %idx.095, %sub12
  %5 = zext i1 %cmp13 to i8
  %spec.select = or i8 %spec.select.v, %5
  %ccode.1 = or i8 %spec.select, %4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body
  %__retry.0 = phi i32 [ 128, %for.body ], [ %dec, %do.body.do.body_crit_edge ]
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %idx.095
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %call = tail call i32 @i2c_smbus_write_word_data(ptr noundef %7, i8 noundef zeroext %ccode.1, i16 noundef zeroext %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__retry.0)
  %tobool.not = icmp ne i32 %__retry.0, 0
  %dec = add nsw i32 %__retry.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp20 = icmp slt i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp20, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp22.not = icmp eq i32 %call, 0
  br i1 %cmp22.not, label %for.inc, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %do.end
  %add = add nuw nsw i32 %idx.095, 2
  %cmp = icmp ult i32 %add, %sub
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  %12 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bytecnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %2)
  %cmp28.not = icmp eq i8 %13, %2
  br i1 %cmp28.not, label %for.end.if.end63_crit_edge, label %if.then30

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then30:                                        ; preds = %for.end
  %14 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0.lcssa)
  %cmp36 = icmp eq i32 %idx.0.lcssa, 0
  %spec.select91.v = select i1 %cmp36, i8 3, i8 1
  %spec.select91 = or i8 %15, %spec.select91.v
  %client46 = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  %data47 = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 2
  br label %do.body45

do.body45:                                        ; preds = %do.body45.do.body45_crit_edge, %if.then30
  %__retry43.0 = phi i32 [ 128, %if.then30 ], [ %dec51, %do.body45.do.body45_crit_edge ]
  %16 = ptrtoint ptr %client46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client46, align 4
  %18 = ptrtoint ptr %data47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data47, align 4
  %arrayidx48 = getelementptr i8, ptr %19, i32 %idx.0.lcssa
  %20 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx48, align 1
  %call49 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext %spec.select91, i8 noundef zeroext %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__retry43.0)
  %tobool52.not = icmp ne i32 %__retry43.0, 0
  %dec51 = add nsw i32 %__retry43.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp54 = icmp slt i32 %call49, 0
  %or.cond92 = select i1 %tobool52.not, i1 %cmp54, i1 false
  br i1 %or.cond92, label %do.body45.do.body45_crit_edge, label %do.end57

do.body45.do.body45_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body45

do.end57:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp59.not = icmp eq i32 %call49, 0
  br i1 %cmp59.not, label %do.end57.if.end63_crit_edge, label %do.end57.cleanup_crit_edge

do.end57.cleanup_crit_edge:                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end57.if.end63_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end63:                                         ; preds = %do.end57.if.end63_crit_edge, %for.end.if.end63_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end57.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end63 ], [ %call49, %do.end57.cleanup_crit_edge ], [ %call, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_smb_write_byte(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bytecnt = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 1
  %0 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bytecnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp39.not = icmp eq i8 %1, 0
  br i1 %cmp39.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %conv38 = zext i8 %1 to i32
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  %data = getelementptr inbounds %struct.idt_smb_seq, ptr %seq, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %do.end
  %inc = add nuw nsw i32 %idx.040, 1
  %2 = ptrtoint ptr %bytecnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bytecnt, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %conv41 = phi i32 [ %conv38, %for.body.lr.ph ], [ %conv, %for.cond.for.body_crit_edge ]
  %idx.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %4 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.040)
  %cmp5 = icmp eq i32 %idx.040, 0
  %6 = or i8 %5, 2
  %spec.select = select i1 %cmp5, i8 %6, i8 %5
  %sub = add nsw i32 %conv41, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.040, i32 %sub)
  %cmp12 = icmp eq i32 %idx.040, %sub
  %7 = zext i1 %cmp12 to i8
  %ccode.1 = or i8 %spec.select, %7
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body
  %__retry.0 = phi i32 [ 128, %for.body ], [ %dec, %do.body.do.body_crit_edge ]
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 %idx.040
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext %ccode.1, i8 noundef zeroext %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__retry.0)
  %tobool.not = icmp ne i32 %__retry.0, 0
  %dec = add nsw i32 %__retry.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp19 = icmp slt i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp19, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp21.not = icmp eq i32 %call, 0
  br i1 %cmp21.not, label %for.cond, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt_csr_read(ptr noundef %pdev, i16 noundef zeroext %csraddr, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %csrseq = alloca %struct.idt_csr_seq, align 1
  %smbseq = alloca %struct.idt_smb_seq, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %csrseq) #11
  %2 = ptrtoint ptr %csrseq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %csrseq, align 1, !annotation !191
  %3 = getelementptr inbounds %struct.idt_csr_seq, ptr %csrseq, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -1, ptr %3, align 1, !annotation !191
  %5 = getelementptr inbounds %struct.idt_csr_seq, ptr %csrseq, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 -1, ptr %5, align 1, !annotation !191
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %smbseq) #11
  %7 = ptrtoint ptr %smbseq to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -70931694131085313, ptr %smbseq, align 8, !annotation !191
  %iniccode = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 5
  %8 = ptrtoint ptr %iniccode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iniccode, align 4
  store i8 %9, ptr %smbseq, align 8
  %data3 = getelementptr inbounds %struct.idt_smb_seq, ptr %smbseq, i32 0, i32 2
  %10 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %csrseq, ptr %data3, align 4
  %smb_mtx = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %smb_mtx, i32 noundef 0) #11
  %inicsrcmd = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 4
  %11 = ptrtoint ptr %inicsrcmd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %inicsrcmd, align 1
  %13 = or i8 %12, 16
  %14 = ptrtoint ptr %csrseq to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %csrseq, align 1
  %15 = call i16 @llvm.bswap.i16(i16 %csraddr)
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %3, align 1
  %smb_write = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 7
  %17 = ptrtoint ptr %smb_write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smb_write, align 4
  %call = call i32 %18(ptr noundef %pdev, ptr noundef nonnull %smbseq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv9 = zext i16 %csraddr to i32
  %shl = shl nuw nsw i32 %conv9, 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.55, i32 noundef %shl) #15
  br label %err_mutex_unlock

if.end:                                           ; preds = %entry
  %bytecnt = getelementptr inbounds %struct.idt_smb_seq, ptr %smbseq, i32 0, i32 1
  %19 = ptrtoint ptr %bytecnt to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 7, ptr %bytecnt, align 1
  %smb_read = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 8
  %20 = ptrtoint ptr %smb_read to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smb_read, align 4
  %call11 = call i32 %21(ptr noundef %pdev, ptr noundef nonnull %smbseq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv18 = zext i16 %csraddr to i32
  %shl19 = shl nuw nsw i32 %conv18, 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.58, i32 noundef %shl19) #15
  br label %err_mutex_unlock

if.end20:                                         ; preds = %if.end
  %22 = ptrtoint ptr %csrseq to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %csrseq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %23)
  %tobool.not = icmp ult i8 %23, 64
  br i1 %tobool.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.61) #15
  br label %err_mutex_unlock

if.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %5, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %data, align 4
  br label %err_mutex_unlock

err_mutex_unlock:                                 ; preds = %if.end27, %do.end26, %do.end17, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ %call11, %do.end17 ], [ -121, %do.end26 ], [ 0, %if.end27 ]
  call void @mutex_unlock(ptr noundef %smb_mtx) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %smbseq) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %csrseq) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %conv2 = trunc i32 %count to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2)
  %cmp14.not.i = icmp eq i16 %conv2, 0
  br i1 %cmp14.not.i, label %entry.idt_eeprom_read.exit_crit_edge, label %for.body.lr.ph.i

entry.idt_eeprom_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %idt_eeprom_read.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %conv = trunc i64 %off to i16
  %smb_mtx.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 9
  %wide.trip.count.i = and i32 %count, 65535
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %memaddr.addr.015.i = phi i16 [ %conv, %for.body.lr.ph.i ], [ %inc6.i, %for.inc.i.for.body.i_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %smb_mtx.i, i32 noundef 0) #11
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %indvars.iv.i
  %call.i = tail call fastcc i32 @idt_eeprom_read_byte(ptr noundef %1, i16 noundef zeroext %memaddr.addr.015.i, ptr noundef %arrayidx.i) #11
  tail call void @mutex_unlock(ptr noundef %smb_mtx.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.not.i, label %for.inc.i, label %for.body.i.idt_eeprom_read.exit_crit_edge

for.body.i.idt_eeprom_read.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %idt_eeprom_read.exit

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %inc6.i = add i16 %memaddr.addr.015.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc.i.idt_eeprom_read.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.idt_eeprom_read.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %idt_eeprom_read.exit

idt_eeprom_read.exit:                             ; preds = %for.inc.i.idt_eeprom_read.exit_crit_edge, %for.body.i.idt_eeprom_read.exit_crit_edge, %entry.idt_eeprom_read.exit_crit_edge
  %2 = phi i32 [ %count, %entry.idt_eeprom_read.exit_crit_edge ], [ %count, %for.inc.i.idt_eeprom_read.exit_crit_edge ], [ %call.i, %for.body.i.idt_eeprom_read.exit_crit_edge ]
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_write(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %eeseq.i = alloca %struct.idt_eeprom_seq, align 1
  %smbseq.i = alloca %struct.idt_smb_seq, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %conv2 = trunc i32 %count to i16
  %client.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %eeseq.i) #11
  %4 = getelementptr inbounds %struct.idt_eeprom_seq, ptr %eeseq.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.idt_eeprom_seq, ptr %eeseq.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.idt_eeprom_seq, ptr %eeseq.i, i32 0, i32 3
  %7 = call ptr @memset(ptr %eeseq.i, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %smbseq.i) #11
  %8 = ptrtoint ptr %smbseq.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %smbseq.i, align 8, !annotation !191
  %iniccode.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %iniccode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iniccode.i, align 4
  %11 = or i8 %10, 4
  store i8 %11, ptr %smbseq.i, align 8
  %data3.i = getelementptr inbounds %struct.idt_smb_seq, ptr %smbseq.i, i32 0, i32 2
  %12 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %eeseq.i, ptr %data3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2)
  %cmp96.not.i = icmp eq i16 %conv2, 0
  br i1 %cmp96.not.i, label %entry..loopexit_crit_edge, label %for.body.lr.ph.i

entry..loopexit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %.loopexit

for.body.lr.ph.i:                                 ; preds = %entry
  %conv = trunc i64 %off to i16
  %smb_mtx.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 9
  %bytecnt.i = getelementptr inbounds %struct.idt_smb_seq, ptr %smbseq.i, i32 0, i32 1
  %inieecmd.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 3
  %eeaddr.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 2
  %smb_write.i = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 7
  %wide.trip.count.i = and i32 %count, 65535
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %memaddr.addr.097.i = phi i16 [ %conv, %for.body.lr.ph.i ], [ %inc52.i, %for.inc.i.for.body.i_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %smb_mtx.i, i32 noundef 0) #11
  %13 = ptrtoint ptr %bytecnt.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %bytecnt.i, align 1
  %14 = ptrtoint ptr %inieecmd.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %inieecmd.i, align 2
  %16 = ptrtoint ptr %eeseq.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %eeseq.i, align 1
  %17 = ptrtoint ptr %eeaddr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %eeaddr.i, align 1
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %4, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %memaddr.addr.097.i) #11
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %5, align 1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %indvars.iv.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %6, align 1
  %25 = ptrtoint ptr %smb_write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smb_write.i, align 4
  %call.i = call i32 %26(ptr noundef %1, ptr noundef nonnull %smbseq.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp13.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv15.i = zext i16 %memaddr.addr.097.i to i32
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %conv18.i = zext i8 %28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.76, i32 noundef %conv15.i, i32 noundef %conv18.i) #15
  br label %idt_eeprom_write.exit

if.end.i:                                         ; preds = %for.body.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %neg.i = xor i8 %30, -1
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %neg.i, ptr %6, align 1
  %call25.i = call fastcc i32 @idt_eeprom_read_byte(ptr noundef %1, i16 noundef zeroext %memaddr.addr.097.i, ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.not.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.not.i, label %if.end29.i, label %if.end.i.idt_eeprom_write.exit_crit_edge

if.end.i.idt_eeprom_write.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %idt_eeprom_write.exit

if.end29.i:                                       ; preds = %if.end.i
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %6, align 1
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp35.not.i = icmp eq i8 %33, %35
  br i1 %cmp35.not.i, label %for.inc.i, label %do.end40.i

do.end40.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv34.i = zext i8 %35 to i32
  %conv31.i = zext i8 %33 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.79, i32 noundef %conv31.i, i32 noundef %conv34.i) #15
  br label %idt_eeprom_write.exit

for.inc.i:                                        ; preds = %if.end29.i
  call void @mutex_unlock(ptr noundef %smb_mtx.i) #11
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %inc52.i = add i16 %memaddr.addr.097.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc.i..loopexit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i..loopexit_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %.loopexit

idt_eeprom_write.exit:                            ; preds = %do.end40.i, %if.end.i.idt_eeprom_write.exit_crit_edge, %do.end.i
  %ret.0.ph.i = phi i32 [ -121, %do.end40.i ], [ %call.i, %do.end.i ], [ %call25.i, %if.end.i.idt_eeprom_write.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %smb_mtx.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %smbseq.i) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %eeseq.i) #11
  br label %36

.loopexit:                                        ; preds = %for.inc.i..loopexit_crit_edge, %entry..loopexit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %smbseq.i) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %eeseq.i) #11
  br label %36

36:                                               ; preds = %.loopexit, %idt_eeprom_write.exit
  %37 = phi i32 [ %count, %.loopexit ], [ %ret.0.ph.i, %idt_eeprom_write.exit ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt_eeprom_read_byte(ptr noundef %pdev, i16 noundef zeroext %memaddr, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %eeseq = alloca %struct.idt_eeprom_seq, align 1
  %smbseq = alloca %struct.idt_smb_seq, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %eeseq) #11
  %2 = getelementptr inbounds %struct.idt_eeprom_seq, ptr %eeseq, i32 0, i32 1
  %3 = getelementptr inbounds %struct.idt_eeprom_seq, ptr %eeseq, i32 0, i32 2
  %4 = getelementptr inbounds %struct.idt_eeprom_seq, ptr %eeseq, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %eeseq, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %smbseq) #11
  %7 = ptrtoint ptr %smbseq to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -70650219154374657, ptr %smbseq, align 8, !annotation !191
  %iniccode = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 5
  %8 = ptrtoint ptr %iniccode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iniccode, align 4
  %10 = or i8 %9, 4
  store i8 %10, ptr %smbseq, align 8
  %data3 = getelementptr inbounds %struct.idt_smb_seq, ptr %smbseq, i32 0, i32 2
  %11 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %eeseq, ptr %data3, align 4
  %bytecnt = getelementptr inbounds %struct.idt_smb_seq, ptr %smbseq, i32 0, i32 1
  %inieecmd = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 3
  %eeaddr = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 2
  %12 = call i16 @llvm.bswap.i16(i16 %memaddr)
  %smb_write = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 7
  %13 = ptrtoint ptr %inieecmd to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %inieecmd, align 2
  %15 = or i8 %14, 1
  %16 = ptrtoint ptr %eeseq to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %eeseq, align 1
  %17 = ptrtoint ptr %eeaddr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %eeaddr, align 1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %2, align 1
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %12, ptr %3, align 1
  %21 = ptrtoint ptr %smb_write to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smb_write, align 4
  %call70 = call i32 %22(ptr noundef %pdev, ptr noundef nonnull %smbseq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp.not71 = icmp eq i32 %call70, 0
  br i1 %cmp.not71, label %if.end.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.lr.ph:                                     ; preds = %entry
  %smb_read = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 8
  br label %if.end

do.end:                                           ; preds = %do.end34.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call70, %entry.do.end_crit_edge ], [ %call, %do.end34.do.end_crit_edge ]
  %conv11 = zext i16 %memaddr to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.67, i32 noundef %conv11) #15
  br label %do.end50

if.end:                                           ; preds = %do.end34.if.end_crit_edge, %if.end.lr.ph
  %retry.072 = phi i32 [ 128, %if.end.lr.ph ], [ %dec, %do.end34.if.end_crit_edge ]
  %23 = ptrtoint ptr %bytecnt to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %bytecnt, align 1
  %24 = ptrtoint ptr %smb_read to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smb_read, align 4
  %call13 = call i32 %25(ptr noundef %pdev, ptr noundef nonnull %smbseq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv20 = zext i16 %memaddr to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70, i32 noundef %conv20) #15
  br label %do.end50

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.072)
  %tobool.not = icmp eq i32 %retry.072, 0
  br i1 %tobool.not, label %if.end21.if.end35_crit_edge, label %land.lhs.true

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end21
  %26 = ptrtoint ptr %eeseq to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %eeseq, align 1
  %28 = and i8 %27, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool24.not = icmp eq i8 %28, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end35_crit_edge, label %do.body26

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.body26:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idt_eeprom_read_byte.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idt_eeprom_read_byte, %if.then31)) #11
          to label %do.end34 [label %if.then31], !srcloc !192

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @idt_eeprom_read_byte.__UNIQUE_ID_ddebug293, ptr noundef %dev1, ptr noundef nonnull @.str.72, i32 noundef 100) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body26
  call void @msleep(i32 noundef 100) #11
  %dec = add nsw i32 %retry.072, -1
  %29 = ptrtoint ptr %bytecnt to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 4, ptr %bytecnt, align 1
  %30 = ptrtoint ptr %inieecmd to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %inieecmd, align 2
  %32 = or i8 %31, 1
  %33 = ptrtoint ptr %eeseq to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %eeseq, align 1
  %34 = ptrtoint ptr %eeaddr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %eeaddr, align 1
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %2, align 1
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %12, ptr %3, align 1
  %38 = ptrtoint ptr %smb_write to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smb_write, align 4
  %call = call i32 %39(ptr noundef %pdev, ptr noundef nonnull %smbseq) #11
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.end34.if.end_crit_edge, label %do.end34.do.end_crit_edge

do.end34.do.end_crit_edge:                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end34.if.end_crit_edge:                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end21.if.end35_crit_edge
  %40 = ptrtoint ptr %eeseq to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %eeseq, align 1
  %conv37 = zext i8 %41 to i32
  %and38 = and i32 %conv37, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end46, label %do.end43

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.74, i32 noundef %conv37) #15
  br label %do.end50

if.end46:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %4, align 1
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %data, align 1
  br label %do.end50

do.end50:                                         ; preds = %if.end46, %do.end43, %do.end19, %do.end
  %ret.0 = phi i32 [ %call.lcssa, %do.end ], [ %call13, %do.end19 ], [ -121, %do.end43 ], [ 0, %if.end46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %smbseq) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %eeseq) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_dbgfs_csr_read(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %count, ptr noundef %offp) #2 align 64 {
entry:
  %csrval = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csrval) #11
  %2 = ptrtoint ptr %csrval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %csrval, align 4, !annotation !191
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %csr = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 6
  %3 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %4 = ptrtoint ptr %csr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %csr, align 2
  %call = call fastcc i32 @idt_csr_read(ptr noundef %1, i16 noundef zeroext %5, ptr noundef nonnull %csrval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %csr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %csr, align 2
  %conv = zext i16 %7 to i32
  %shl = shl nuw nsw i32 %conv, 2
  %8 = ptrtoint ptr %csrval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %csrval, align 4
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.82, i32 noundef %shl, i32 noundef %9)
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %offp, ptr noundef nonnull %buf, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csrval) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_dbgfs_csr_write(ptr nocapture noundef readonly %filep, ptr noundef %ubuf, i32 noundef %count, ptr noundef %offp) #2 align 64 {
entry:
  %csraddr = alloca i32, align 4
  %csrval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csraddr) #11
  %2 = ptrtoint ptr %csraddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %csraddr, align 4, !annotation !191
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csrval) #11
  %3 = ptrtoint ptr %csrval to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %csrval, align 4, !annotation !191
  %add = add i32 %count, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i, i32 noundef %count, ptr noundef %offp, ptr noundef %ubuf, i32 noundef %count) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.free_buf.thread_crit_edge, label %if.end3

if.end.free_buf.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_buf.thread

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %count
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  %call4 = tail call ptr @strnchr(ptr noundef nonnull %call9.i, i32 noundef %count, i32 noundef 58) #11
  %cmp5.not = icmp eq ptr %call4, null
  br i1 %cmp5.not, label %if.end3.if.end15_crit_edge, label %if.then6

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then6:                                         ; preds = %if.end3
  %sub.ptr.lhs.cast = ptrtoint ptr %call4 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call9.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add7 = add i32 %sub.ptr.sub, 1
  %call9.i107 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add7, i32 noundef 3264) #16
  %cmp9 = icmp eq ptr %call9.i107, null
  br i1 %cmp9, label %if.then6.free_buf.thread_crit_edge, label %if.end11

if.then6.free_buf.thread_crit_edge:               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_buf.thread

if.end11:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call ptr @strncpy(ptr noundef nonnull %call9.i107, ptr noundef nonnull %call9.i, i32 noundef %sub.ptr.sub)
  %arrayidx13 = getelementptr i8, ptr %call9.i107, i32 %sub.ptr.sub
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx13, align 1
  %add.ptr = getelementptr i8, ptr %call4, i32 1
  br label %if.end15

if.end15:                                         ; preds = %if.end11, %if.end3.if.end15_crit_edge
  %csraddr_str.0 = phi ptr [ %call9.i107, %if.end11 ], [ %call9.i, %if.end3.if.end15_crit_edge ]
  %csrval_str.0 = phi ptr [ %add.ptr, %if.end11 ], [ null, %if.end3.if.end15_crit_edge ]
  %call.i = call i32 @kstrtouint(ptr noundef nonnull %csraddr_str.0, i32 noundef 0, ptr noundef nonnull %csraddr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17.not = icmp eq i32 %call.i, 0
  br i1 %cmp17.not, label %if.end19, label %if.end15.free_csraddr_str_crit_edge

if.end15.free_csraddr_str_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_csraddr_str

if.end19:                                         ; preds = %if.end15
  %6 = ptrtoint ptr %csraddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %csraddr, align 4
  %8 = and i32 %7, -262141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.end23, label %if.end19.free_csraddr_str_crit_edge

if.end19.free_csraddr_str_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_csraddr_str

if.end23:                                         ; preds = %if.end19
  %shr = lshr i32 %7, 2
  %conv = trunc i32 %shr to i16
  %csr = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %csr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %csr, align 2
  br i1 %cmp5.not, label %free_buf.thread127, label %if.then26

free_buf.thread127:                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %15

if.then26:                                        ; preds = %if.end23
  %call.i111 = call i32 @kstrtouint(ptr noundef %csrval_str.0, i32 noundef 0, ptr noundef nonnull %csrval) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp28.not = icmp eq i32 %call.i111, 0
  br i1 %cmp28.not, label %if.end31, label %if.then26.free_buf_crit_edge

if.then26.free_buf_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_buf

if.end31:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %csr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %csr, align 2
  %13 = ptrtoint ptr %csrval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %csrval, align 4
  %call33 = call fastcc i32 @idt_csr_write(ptr noundef %1, i16 noundef zeroext %12, i32 noundef %14)
  br label %free_buf

free_csraddr_str:                                 ; preds = %if.end19.free_csraddr_str_crit_edge, %if.end15.free_csraddr_str_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end15.free_csraddr_str_crit_edge ], [ -22, %if.end19.free_csraddr_str_crit_edge ]
  br i1 %cmp5.not, label %free_csraddr_str.free_buf.thread_crit_edge, label %free_csraddr_str.free_buf_crit_edge

free_csraddr_str.free_buf_crit_edge:              ; preds = %free_csraddr_str
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_buf

free_csraddr_str.free_buf.thread_crit_edge:       ; preds = %free_csraddr_str
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_buf.thread

free_buf.thread:                                  ; preds = %free_csraddr_str.free_buf.thread_crit_edge, %if.then6.free_buf.thread_crit_edge, %if.end.free_buf.thread_crit_edge
  %ret.1.ph = phi i32 [ -12, %if.then6.free_buf.thread_crit_edge ], [ %ret.0, %free_csraddr_str.free_buf.thread_crit_edge ], [ %call1, %if.end.free_buf.thread_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

free_buf:                                         ; preds = %free_csraddr_str.free_buf_crit_edge, %if.end31, %if.then26.free_buf_crit_edge
  %ret.0121 = phi i32 [ %ret.0, %free_csraddr_str.free_buf_crit_edge ], [ %call33, %if.end31 ], [ %call.i111, %if.then26.free_buf_crit_edge ]
  call void @kfree(ptr noundef nonnull %csraddr_str.0) #11
  call void @kfree(ptr noundef nonnull %call9.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0121)
  %cmp43.not = icmp eq i32 %ret.0121, 0
  br i1 %cmp43.not, label %free_buf._crit_edge, label %free_buf.cleanup_crit_edge

free_buf.cleanup_crit_edge:                       ; preds = %free_buf
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

free_buf._crit_edge:                              ; preds = %free_buf
  call void @__sanitizer_cov_trace_pc() #13
  br label %15

15:                                               ; preds = %free_buf._crit_edge, %free_buf.thread127
  br label %cleanup

cleanup:                                          ; preds = %15, %free_buf.cleanup_crit_edge, %free_buf.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %count, %15 ], [ %ret.0121, %free_buf.cleanup_crit_edge ], [ %ret.1.ph, %free_buf.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csrval) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csraddr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idt_csr_write(ptr noundef %pdev, i16 noundef zeroext %csraddr, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  %csrseq = alloca %struct.idt_csr_seq, align 1
  %smbseq = alloca %struct.idt_smb_seq, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 10
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %csrseq) #11
  %2 = ptrtoint ptr %csrseq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %csrseq, align 1, !annotation !191
  %3 = getelementptr inbounds %struct.idt_csr_seq, ptr %csrseq, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -1, ptr %3, align 1, !annotation !191
  %5 = getelementptr inbounds %struct.idt_csr_seq, ptr %csrseq, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 -1, ptr %5, align 1, !annotation !191
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %smbseq) #11
  %7 = ptrtoint ptr %smbseq to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -69805794224242689, ptr %smbseq, align 8, !annotation !191
  %iniccode = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 5
  %8 = ptrtoint ptr %iniccode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iniccode, align 4
  store i8 %9, ptr %smbseq, align 8
  %data3 = getelementptr inbounds %struct.idt_smb_seq, ptr %smbseq, i32 0, i32 2
  %10 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %csrseq, ptr %data3, align 4
  %smb_mtx = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %smb_mtx, i32 noundef 0) #11
  %bytecnt = getelementptr inbounds %struct.idt_smb_seq, ptr %smbseq, i32 0, i32 1
  %inicsrcmd = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 4
  %11 = ptrtoint ptr %inicsrcmd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %inicsrcmd, align 1
  %13 = ptrtoint ptr %csrseq to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %csrseq, align 1
  %14 = call i16 @llvm.bswap.i16(i16 %csraddr)
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %3, align 1
  %16 = call i32 @llvm.bswap.i32(i32 %data)
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %5, align 1
  %smb_write = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 7
  %18 = ptrtoint ptr %smb_write to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smb_write, align 4
  %call = call i32 %19(ptr noundef %pdev, ptr noundef nonnull %smbseq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv10 = zext i16 %csraddr to i32
  %shl = shl nuw nsw i32 %conv10, 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.83, i32 noundef %shl, i32 noundef %data) #15
  br label %err_mutex_unlock

if.end:                                           ; preds = %entry
  %20 = ptrtoint ptr %bytecnt to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %bytecnt, align 1
  %21 = ptrtoint ptr %inicsrcmd to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %inicsrcmd, align 1
  %23 = or i8 %22, 16
  %24 = ptrtoint ptr %csrseq to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %csrseq, align 1
  %25 = ptrtoint ptr %smb_write to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smb_write, align 4
  %call18 = call i32 %26(ptr noundef %pdev, ptr noundef nonnull %smbseq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv25 = zext i16 %csraddr to i32
  %shl26 = shl nuw nsw i32 %conv25, 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.55, i32 noundef %shl26) #15
  br label %err_mutex_unlock

if.end27:                                         ; preds = %if.end
  %27 = ptrtoint ptr %bytecnt to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 7, ptr %bytecnt, align 1
  %smb_read = getelementptr inbounds %struct.idt_89hpesx_dev, ptr %pdev, i32 0, i32 8
  %28 = ptrtoint ptr %smb_read to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smb_read, align 4
  %call29 = call i32 %29(ptr noundef %pdev, ptr noundef nonnull %smbseq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end38, label %do.end35

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %conv36 = zext i16 %csraddr to i32
  %shl37 = shl nuw nsw i32 %conv36, 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.88, i32 noundef %shl37) #15
  br label %err_mutex_unlock

if.end38:                                         ; preds = %if.end27
  %30 = ptrtoint ptr %csrseq to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %csrseq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %31)
  %tobool.not = icmp ult i8 %31, 64
  br i1 %tobool.not, label %if.end38.err_mutex_unlock_crit_edge, label %do.end44

if.end38.err_mutex_unlock_crit_edge:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mutex_unlock

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.61) #15
  br label %err_mutex_unlock

err_mutex_unlock:                                 ; preds = %do.end44, %if.end38.err_mutex_unlock_crit_edge, %do.end35, %do.end24, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ %call18, %do.end24 ], [ %call29, %do.end35 ], [ -121, %do.end44 ], [ 0, %if.end38.err_mutex_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %smb_mtx) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %smbseq) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %csrseq) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !54, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !161, !163, !165, !166, !167, !168, !170, !171, !173, !174, !175, !177, !178, !180}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__UNIQUE_ID_description288, !1, !"__UNIQUE_ID_description288", i1 false, i1 false}
!1 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 58, i32 1}
!2 = !{ptr @__UNIQUE_ID_version289, !3, !"__UNIQUE_ID_version289", i1 false, i1 false}
!3 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 59, i32 1}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__modver_attr, !3, !"__modver_attr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file290, !9, !"__UNIQUE_ID_file290", i1 false, i1 false}
!9 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 60, i32 1}
!10 = !{ptr @__UNIQUE_ID_license291, !9, !"__UNIQUE_ID_license291", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author292, !12, !"__UNIQUE_ID_author292", i1 false, i1 false}
!12 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 61, i32 1}
!13 = !{ptr @__initcall__kmod_idt_89hpesx__299_1574_idt_init6, !14, !"__initcall__kmod_idt_89hpesx__299_1574_idt_init6", i1 false, i1 false}
!14 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1574, i32 1}
!15 = !{ptr @__exitcall_idt_exit, !16, !"__exitcall_idt_exit", i1 false, i1 false}
!16 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1587, i32 1}
!17 = !{ptr @csr_dbgdir, !18, !"csr_dbgdir", i1 false, i1 false}
!18 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 66, i32 23}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1569, i32 35}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1554, i32 11}
!23 = !{ptr @idt_driver, !24, !"idt_driver", i1 false, i1 false}
!24 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1552, i32 26}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1101, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @idt_get_fw_data._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @idt_get_fw_data._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1106, i32 3}
!35 = !{ptr @idt_get_fw_data._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @idt_get_fw_data._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1115, i32 41}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1117, i32 3}
!41 = !{ptr @idt_get_fw_data._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @idt_get_fw_data._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1127, i32 40}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1133, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @idt_get_fw_data._entry.18, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @idt_get_fw_data._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1069, i32 44}
!52 = !{ptr @ee_ids, !53, !"ee_ids", i1 false, i1 false}
!53 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1423, i32 35}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1197, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @idt_set_smbus_ops.__UNIQUE_ID_ddebug294, !55, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1201, i32 3}
!60 = !{ptr @idt_set_smbus_ops.__UNIQUE_ID_ddebug295, !59, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1207, i32 3}
!63 = !{ptr @idt_set_smbus_ops._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @idt_set_smbus_ops._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1211, i32 3}
!67 = !{ptr @idt_set_smbus_ops._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @idt_set_smbus_ops._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1213, i32 3}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @idt_set_smbus_ops._entry.31, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @idt_set_smbus_ops._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1221, i32 3}
!76 = !{ptr @idt_set_smbus_ops.__UNIQUE_ID_ddebug296, !75, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1225, i32 3}
!79 = !{ptr @idt_set_smbus_ops.__UNIQUE_ID_ddebug297, !78, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1231, i32 3}
!82 = !{ptr @idt_set_smbus_ops._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @idt_set_smbus_ops._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1235, i32 3}
!86 = !{ptr @idt_set_smbus_ops._entry.40, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @idt_set_smbus_ops._entry_ptr.42, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1237, i32 3}
!90 = !{ptr @idt_set_smbus_ops._entry.43, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @idt_set_smbus_ops._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @idt_set_smbus_ops.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1242, i32 2}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1261, i32 3}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @idt_check_dev._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @idt_check_dev._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1267, i32 3}
!102 = !{ptr @idt_check_dev._entry.49, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @idt_check_dev._entry_ptr.51, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1271, i32 2}
!106 = !{ptr @idt_check_dev._entry.52, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @idt_check_dev._entry_ptr.54, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 804, i32 3}
!110 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @idt_csr_read._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @idt_csr_read._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 813, i32 3}
!115 = !{ptr @idt_csr_read._entry.57, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @idt_csr_read._entry_ptr.59, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 820, i32 3}
!119 = !{ptr @idt_csr_read._entry.60, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @idt_csr_read._entry_ptr.62, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1289, i32 3}
!123 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @idt_create_sysfs_files.__UNIQUE_ID_ddebug298, !122, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1310, i32 3}
!127 = !{ptr @idt_create_sysfs_files._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @idt_create_sysfs_files._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1027, i32 8}
!131 = !{ptr @bin_attr_eeprom, !130, !"bin_attr_eeprom", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 569, i32 4}
!134 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @idt_eeprom_read_byte._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @idt_eeprom_read_byte._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 578, i32 4}
!139 = !{ptr @idt_eeprom_read_byte._entry.69, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @idt_eeprom_read_byte._entry_ptr.71, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 585, i32 4}
!143 = !{ptr @idt_eeprom_read_byte.__UNIQUE_ID_ddebug293, !142, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 593, i32 4}
!146 = !{ptr @idt_eeprom_read_byte._entry.73, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @idt_eeprom_read_byte._entry_ptr.75, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 642, i32 4}
!150 = !{ptr @.str.77, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @idt_eeprom_write._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @idt_eeprom_write._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 659, i32 4}
!155 = !{ptr @idt_eeprom_write._entry.78, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @idt_eeprom_write._entry_ptr.80, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1344, i32 31}
!159 = !{ptr @csr_dbgfs_ops, !160, !"csr_dbgfs_ops", i1 false, i1 false}
!160 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1032, i32 37}
!161 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1014, i32 36}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 740, i32 3}
!165 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @idt_csr_write._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @idt_csr_write._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @idt_csr_write._entry.85, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 750, i32 3}
!170 = !{ptr @idt_csr_write._entry_ptr.86, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 759, i32 3}
!173 = !{ptr @idt_csr_write._entry.87, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @idt_csr_write._entry_ptr.89, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @idt_csr_write._entry.90, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 766, i32 3}
!177 = !{ptr @idt_csr_write._entry_ptr.91, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @idt_of_match, !179, !"idt_of_match", i1 false, i1 false}
!179 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1493, i32 34}
!180 = !{ptr @idt_ids, !181, !"idt_ids", i1 false, i1 false}
!181 = !{!"../drivers/misc/eeprom/idt_89hpesx.c", i32 1436, i32 35}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{!"auto-init"}
!192 = !{i64 2148733607, i64 2148733612, i64 2148733625, i64 2148733669, i64 2148733703, i64 2148733724}
!193 = !{i8 0, i8 2}
