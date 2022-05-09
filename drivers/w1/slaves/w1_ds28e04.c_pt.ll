; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds28e04.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds28e04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }
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
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }
%struct.w1_f1C_data = type { [512 x i8], i32 }

@__param_str_strong_pullup = internal constant [25 x i8] c"w1_ds28e04.strong_pullup\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@w1_strong_pullup = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_strong_pullup = internal constant %struct.kernel_param { ptr @__param_str_strong_pullup, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @w1_strong_pullup } }, section "__param", align 4
@__UNIQUE_ID_strong_pulluptype187 = internal constant [38 x i8] c"w1_ds28e04.parmtype=strong_pullup:int\00", section ".modinfo", align 1
@__initcall__kmod_w1_ds28e04__188_409_w1_family_1C_init6 = internal global ptr @w1_family_1C_init, section ".initcall6.init", align 4
@w1_family_1C = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 28, ptr @w1_f1C_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_family_1C_exit = internal global ptr @w1_family_1C_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author189 = internal constant [83 x i8] c"w1_ds28e04.author=Markus Franke <franke.m@sebakmt.com>, <franm@hrz.tu-chemnitz.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [75 x i8] c"w1_ds28e04.description=w1 family 1C driver for DS28E04, 4kb EEPROM and PIO\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [45 x i8] c"w1_ds28e04.file=drivers/w1/slaves/w1_ds28e04\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [23 x i8] c"w1_ds28e04.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias193 = internal constant [32 x i8] c"w1_ds28e04.alias=w1-family-0x1C\00", section ".modinfo", align 1
@w1_f1C_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @w1_f1C_add_slave, ptr @w1_f1C_remove_slave, ptr @w1_f1C_groups, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_f1C_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_f1C_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_enable_crccheck = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@w1_f1C_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w1_f1C_attrs, ptr @w1_f1C_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@w1_f1C_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_crccheck, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_f1C_bin_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @bin_attr_eeprom, ptr @bin_attr_pio, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_crccheck = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @crccheck_show, ptr @crccheck_store }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"crccheck\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@bin_attr_eeprom = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 512, ptr null, ptr null, ptr @eeprom_read, ptr @eeprom_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_pio = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1, ptr null, ptr null, ptr @pio_read, ptr @pio_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@eeprom_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 238, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid offset/count off=%d cnt=%zd\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eeprom_write\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/w1/slaves/w1_ds28e04.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@eeprom_write._entry_ptr = internal global ptr @eeprom_write._entry, section ".printk_index", align 4
@eeprom_write._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 247, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bad CRC at offset %d\0A\00", [42 x i8] zeroinitializer }, align 32
@eeprom_write._entry_ptr.10 = internal global ptr @eeprom_write._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pio\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"w1_strong_pullup\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 31, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"w1_family_1C\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 405, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"w1_f1C_fops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 399, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"w1_f1C_groups\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 374, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"w1_enable_crccheck\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 35, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"w1_f1C_group\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 369, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"w1_f1C_attrs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 358, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"w1_f1C_bin_attrs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 363, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"dev_attr_crccheck\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 356, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 342, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"bin_attr_eeprom\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"bin_attr_pio\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 276, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 237, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 246, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [34 x i8] c"../drivers/w1/slaves/w1_ds28e04.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 337, i32 8 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias193, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__UNIQUE_ID_strong_pulluptype187, ptr @__exitcall_w1_family_1C_exit, ptr @__initcall__kmod_w1_ds28e04__188_409_w1_family_1C_init6, ptr @__param_strong_pullup, ptr @eeprom_write._entry, ptr @eeprom_write._entry.8, ptr @eeprom_write._entry_ptr, ptr @eeprom_write._entry_ptr.10, ptr @w1_family_1C_exit, ptr @w1_strong_pullup, ptr @w1_family_1C, ptr @w1_f1C_fops, ptr @w1_f1C_groups, ptr @w1_enable_crccheck, ptr @w1_f1C_group, ptr @w1_f1C_attrs, ptr @w1_f1C_bin_attrs, ptr @dev_attr_crccheck, ptr @.str, ptr @.str.1, ptr @bin_attr_eeprom, ptr @bin_attr_pio, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_strong_pullup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_1C to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f1C_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f1C_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_enable_crccheck to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f1C_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f1C_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f1C_bin_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_crccheck to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_eeprom to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_pio to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_write._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_family_1C_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_1C) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_family_1C_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_1C) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_f1C_add_slave(ptr nocapture noundef writeonly %sl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @w1_enable_crccheck, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 516) #11
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %2 = ptrtoint ptr %family_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %family_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_f1C_remove_slave(ptr nocapture noundef %sl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %family_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %family_data, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crccheck_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @w1_enable_crccheck, align 1, !range !64
  %1 = zext i8 %0 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crccheck_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull @w1_enable_crccheck) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %wrbuf.i41 = alloca [3 x i8], align 1
  %wrbuf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  %family_data = getelementptr i8, ptr %kobj, i32 -4
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %off)
  %cmp.i = icmp sgt i64 %off, 512
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv2.i = zext i32 %count to i64
  %add.i = add nsw i64 %conv2.i, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %add.i)
  %cmp4.i = icmp sgt i64 %add.i, 512
  %2 = trunc i64 %off to i32
  %conv8.i = sub i32 512, %2
  %retval.0.i = select i1 %cmp4.i, i32 %conv8.i, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %master = getelementptr i8, ptr %kobj, i32 -12
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  %mutex = getelementptr inbounds %struct.w1_master, ptr %4, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %5 = load i8, ptr @w1_enable_crccheck, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %6 = lshr i64 %off, 5
  %conv = trunc i64 %6 to i32
  %conv3 = zext i32 %retval.0.i to i64
  %add = add nsw i64 %off, 137438953471
  %sub = add nsw i64 %add, %conv3
  %7 = lshr i64 %sub, 5
  %conv5 = trunc i64 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv5)
  %cmp6.not57 = icmp sgt i32 %conv, %conv5
  br i1 %cmp6.not57, label %if.then2.for.end_crit_edge, label %for.body.lr.ph

if.then2.for.end_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then2
  %8 = getelementptr inbounds [3 x i8], ptr %wrbuf.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %wrbuf.i, i32 0, i32 2
  %validcrc.i = getelementptr inbounds %struct.w1_f1C_data, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %wrbuf.i) #8
  %mul.i = shl i32 %i.058, 5
  %10 = ptrtoint ptr %validcrc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %validcrc.i, align 4
  %shl.i = shl nuw i32 1, %i.058
  %and.i = and i32 %11, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i38, label %for.body.w1_f1C_refresh_block.exit.thread_crit_edge

for.body.w1_f1C_refresh_block.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f1C_refresh_block.exit.thread

if.end.i38:                                       ; preds = %for.body
  %call.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end4.i, label %w1_f1C_refresh_block.exit

if.end4.i:                                        ; preds = %if.end.i38
  %12 = ptrtoint ptr %wrbuf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -16, ptr %wrbuf.i, align 1
  %conv.i = trunc i32 %mul.i to i8
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %8, align 1
  %14 = lshr i32 %mul.i, 8
  %conv7.i = trunc i32 %14 to i8
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7.i, ptr %9, align 1
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %17, ptr noundef nonnull %wrbuf.i, i32 noundef 3) #8
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master, align 4
  %arrayidx10.i = getelementptr [512 x i8], ptr %1, i32 0, i32 %mul.i
  %call11.i = call zeroext i8 @w1_read_block(ptr noundef %19, ptr noundef %arrayidx10.i, i32 noundef 32) #8
  %call14.i = call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %arrayidx10.i, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20479, i16 %call14.i)
  %cmp.i39 = icmp eq i16 %call14.i, -20479
  br i1 %cmp.i39, label %w1_f1C_refresh_block.exit.thread53, label %if.end4.i.w1_f1C_refresh_block.exit.thread_crit_edge

if.end4.i.w1_f1C_refresh_block.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f1C_refresh_block.exit.thread

w1_f1C_refresh_block.exit.thread53:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %validcrc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %validcrc.i, align 4
  %or.i = or i32 %21, %shl.i
  store i32 %or.i, ptr %validcrc.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf.i) #8
  br label %for.inc

w1_f1C_refresh_block.exit.thread:                 ; preds = %if.end4.i.w1_f1C_refresh_block.exit.thread_crit_edge, %for.body.w1_f1C_refresh_block.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf.i) #8
  br label %for.inc

w1_f1C_refresh_block.exit:                        ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %validcrc.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %validcrc.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf.i) #8
  br label %out_up

for.inc:                                          ; preds = %w1_f1C_refresh_block.exit.thread, %w1_f1C_refresh_block.exit.thread53
  %inc = add i32 %i.058, 1
  %cmp6.not = icmp sgt i32 %inc, %conv5
  br i1 %cmp6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then2.for.end_crit_edge
  %arrayidx = getelementptr [512 x i8], ptr %1, i32 0, i32 %2
  %23 = call ptr @memcpy(ptr %buf, ptr %arrayidx, i32 %retval.0.i)
  br label %out_up

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %wrbuf.i41) #8
  %call.i42 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not.i43 = icmp eq i32 %call.i42, 0
  br i1 %tobool.not.i43, label %if.end.i47, label %if.else.w1_f1C_read.exit_crit_edge

if.else.w1_f1C_read.exit_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f1C_read.exit

if.end.i47:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %24 = getelementptr inbounds [3 x i8], ptr %wrbuf.i41, i32 0, i32 2
  %25 = getelementptr inbounds [3 x i8], ptr %wrbuf.i41, i32 0, i32 1
  %26 = ptrtoint ptr %wrbuf.i41 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -16, ptr %wrbuf.i41, align 1
  %conv.i44 = trunc i64 %off to i8
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i44, ptr %25, align 1
  %28 = lshr i64 %off, 8
  %conv2.i45 = trunc i64 %28 to i8
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv2.i45, ptr %24, align 1
  %30 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %31, ptr noundef nonnull %wrbuf.i41, i32 noundef 3) #8
  %32 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master, align 4
  %call5.i = call zeroext i8 @w1_read_block(ptr noundef %33, ptr noundef %buf, i32 noundef %retval.0.i) #8
  %conv6.i = zext i8 %call5.i to i32
  br label %w1_f1C_read.exit

w1_f1C_read.exit:                                 ; preds = %if.end.i47, %if.else.w1_f1C_read.exit_crit_edge
  %retval.0.i48 = phi i32 [ %conv6.i, %if.end.i47 ], [ -5, %if.else.w1_f1C_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf.i41) #8
  br label %out_up

out_up:                                           ; preds = %w1_f1C_read.exit, %for.end, %w1_f1C_refresh_block.exit
  %count.addr.0 = phi i32 [ %retval.0.i, %for.end ], [ %retval.0.i48, %w1_f1C_read.exit ], [ -5, %w1_f1C_refresh_block.exit ]
  %34 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master, align 4
  %mutex16 = getelementptr inbounds %struct.w1_master, ptr %35, i32 0, i32 20
  call void @mutex_unlock(ptr noundef %mutex16) #8
  br label %cleanup

cleanup:                                          ; preds = %out_up, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %out_up ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %wrbuf.i = alloca [4 x i8], align 1
  %rdbuf.i = alloca [35 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %off)
  %cmp.i = icmp sgt i64 %off, 512
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv2.i = zext i32 %count to i64
  %add.i = add nsw i64 %conv2.i, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %add.i)
  %cmp4.i = icmp sgt i64 %add.i, 512
  %0 = trunc i64 %off to i32
  %conv8.i = sub i32 512, %0
  %retval.0.i = select i1 %cmp4.i, i32 %conv8.i, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %1 = load i8, ptr @w1_enable_crccheck, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.while.body.lr.ph_crit_edge, label %if.then2

if.end.while.body.lr.ph_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph

if.then2:                                         ; preds = %if.end
  %and = and i64 %off, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  %and4 = and i32 %retval.0.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.then2.for.body_crit_edge, label %do.end

if.then2.for.body_crit_edge:                      ; preds = %if.then2
  br label %for.body

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %kobj, ptr noundef nonnull @.str.3, i32 noundef %0, i32 noundef %retval.0.i) #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %add = add i32 %idx.084, 32
  %cmp8 = icmp ult i32 %add, %retval.0.i
  br i1 %cmp8, label %for.cond.for.body_crit_edge, label %for.cond.while.body.lr.ph_crit_edge

for.cond.while.body.lr.ph_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then2.for.body_crit_edge
  %idx.084 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 0, %if.then2.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %idx.084
  %call10 = tail call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %arrayidx, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20479, i16 %call10)
  %cmp12.not = icmp eq i16 %call10, -20479
  br i1 %cmp12.not, label %for.cond, label %do.end17

do.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %kobj, ptr noundef nonnull @.str.9, i32 noundef %0) #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %for.cond.while.body.lr.ph_crit_edge, %if.end.while.body.lr.ph_crit_edge
  %master = getelementptr i8, ptr %kobj, i32 -12
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %mutex = getelementptr inbounds %struct.w1_master, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %4 = getelementptr inbounds [4 x i8], ptr %wrbuf.i, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %wrbuf.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %wrbuf.i, i32 0, i32 3
  %family_data.i = getelementptr i8, ptr %kobj, i32 -4
  %arrayidx21.i = getelementptr inbounds [35 x i8], ptr %rdbuf.i, i32 0, i32 1
  %arrayidx28.i = getelementptr inbounds [35 x i8], ptr %rdbuf.i, i32 0, i32 2
  %arrayidx34.i = getelementptr inbounds [35 x i8], ptr %rdbuf.i, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %while.body.lr.ph
  %idx.186 = phi i32 [ 0, %while.body.lr.ph ], [ %add40, %if.end39.while.body_crit_edge ]
  %conv26 = add i32 %idx.186, %0
  %and27 = and i32 %conv26, 31
  %sub = sub nuw nsw i32 32, %and27
  %sub28 = sub i32 %retval.0.i, %idx.186
  %7 = call i32 @llvm.umin.i32(i32 %sub, i32 %sub28)
  %arrayidx34 = getelementptr i8, ptr %buf, i32 %idx.186
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wrbuf.i) #8
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %rdbuf.i) #8
  %9 = call ptr @memset(ptr %rdbuf.i, i32 255, i32 35)
  %add.i75 = add i32 %7, %conv26
  %10 = trunc i32 %add.i75 to i8
  %11 = add i8 %10, 31
  %conv.i = and i8 %11, 31
  %12 = ptrtoint ptr %family_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %family_data.i, align 4
  %call.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i77, label %while.body.w1_f1C_write.exit.thread_crit_edge

while.body.w1_f1C_write.exit.thread_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f1C_write.exit.thread

if.end.i77:                                       ; preds = %while.body
  %14 = ptrtoint ptr %wrbuf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 15, ptr %wrbuf.i, align 1
  %conv2.i76 = trunc i32 %conv26 to i8
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv2.i76, ptr %4, align 1
  %16 = lshr i32 %conv26, 8
  %conv4.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4.i, ptr %5, align 1
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %19, ptr noundef nonnull %wrbuf.i, i32 noundef 3) #8
  %20 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %21, ptr noundef %arrayidx34, i32 noundef %7) #8
  %call7.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i77.w1_f1C_write.exit.thread_crit_edge

if.end.i77.w1_f1C_write.exit.thread_crit_edge:    ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f1C_write.exit.thread

if.end10.i:                                       ; preds = %if.end.i77
  %22 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %23, i8 noundef zeroext -86) #8
  %24 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %master, align 4
  %add14.i = add nuw nsw i32 %7, 3
  %call15.i = call zeroext i8 @w1_read_block(ptr noundef %25, ptr noundef nonnull %rdbuf.i, i32 noundef %add14.i) #8
  %26 = ptrtoint ptr %rdbuf.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rdbuf.i, align 1
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp.not.i = icmp eq i8 %27, %29
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end10.i.w1_f1C_write.exit.thread_crit_edge

if.end10.i.w1_f1C_write.exit.thread_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f1C_write.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %30 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx21.i, align 1
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp25.not.i = icmp eq i8 %31, %33
  br i1 %cmp25.not.i, label %lor.lhs.false27.i, label %lor.lhs.false.i.w1_f1C_write.exit.thread_crit_edge

lor.lhs.false.i.w1_f1C_write.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f1C_write.exit.thread

lor.lhs.false27.i:                                ; preds = %lor.lhs.false.i
  %34 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx28.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %conv.i)
  %cmp31.not.i = icmp eq i8 %35, %conv.i
  br i1 %cmp31.not.i, label %lor.lhs.false33.i, label %lor.lhs.false27.i.w1_f1C_write.exit.thread_crit_edge

lor.lhs.false27.i.w1_f1C_write.exit.thread_crit_edge: ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f1C_write.exit.thread

lor.lhs.false33.i:                                ; preds = %lor.lhs.false27.i
  %bcmp.i = call i32 @bcmp(ptr %arrayidx34, ptr %arrayidx34.i, i32 %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp36.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp36.not.i, label %if.end39.i, label %lor.lhs.false33.i.w1_f1C_write.exit.thread_crit_edge

lor.lhs.false33.i.w1_f1C_write.exit.thread_crit_edge: ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f1C_write.exit.thread

if.end39.i:                                       ; preds = %lor.lhs.false33.i
  %call40.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end53.2.i, label %if.end39.i.w1_f1C_write.exit.thread_crit_edge

if.end39.i.w1_f1C_write.exit.thread_crit_edge:    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f1C_write.exit.thread

if.end53.2.i:                                     ; preds = %if.end39.i
  %36 = ptrtoint ptr %wrbuf.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 85, ptr %wrbuf.i, align 1
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i, ptr %6, align 1
  %38 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %39, i8 noundef zeroext 85) #8
  %40 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %master, align 4
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %4, align 1
  call void @w1_write_8(ptr noundef %41, i8 noundef zeroext %43) #8
  %44 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %master, align 4
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %5, align 1
  call void @w1_write_8(ptr noundef %45, i8 noundef zeroext %47) #8
  %48 = load i32, ptr @w1_strong_pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool48.not.3.not.i = icmp eq i32 %48, 0
  br i1 %tobool48.not.3.not.i, label %if.end53.2.i.if.end53.3.i_crit_edge, label %if.then51.3.i

if.end53.2.i.if.end53.3.i_crit_edge:              ; preds = %if.end53.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.3.i

if.then51.3.i:                                    ; preds = %if.end53.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %master, align 4
  call void @w1_next_pullup(ptr noundef %50, i32 noundef 10) #8
  br label %if.end53.3.i

if.end53.3.i:                                     ; preds = %if.then51.3.i, %if.end53.2.i.if.end53.3.i_crit_edge
  %51 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %master, align 4
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %6, align 1
  call void @w1_write_8(ptr noundef %52, i8 noundef zeroext %54) #8
  %55 = load i32, ptr @w1_strong_pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool56.not.i = icmp eq i32 %55, 0
  br i1 %tobool56.not.i, label %if.then57.i, label %if.end53.3.i.if.end58.i_crit_edge

if.end53.3.i.if.end58.i_crit_edge:                ; preds = %if.end53.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then57.i:                                      ; preds = %if.end53.3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 10) #8
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then57.i, %if.end53.3.i.if.end58.i_crit_edge
  %56 = load i8, ptr @w1_enable_crccheck, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool59.not.i = icmp eq i8 %56, 0
  br i1 %tobool59.not.i, label %if.end58.i.if.end39_crit_edge, label %if.then60.i

if.end58.i.if.end39_crit_edge:                    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then60.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr61.i = ashr i32 %conv26, 5
  %shl.i = shl nuw i32 1, %shr61.i
  %neg.i = xor i32 %shl.i, -1
  %validcrc.i = getelementptr inbounds %struct.w1_f1C_data, ptr %13, i32 0, i32 1
  %57 = ptrtoint ptr %validcrc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %validcrc.i, align 4
  %and62.i = and i32 %58, %neg.i
  store i32 %and62.i, ptr %validcrc.i, align 4
  br label %if.end39

w1_f1C_write.exit.thread:                         ; preds = %if.end39.i.w1_f1C_write.exit.thread_crit_edge, %lor.lhs.false33.i.w1_f1C_write.exit.thread_crit_edge, %lor.lhs.false27.i.w1_f1C_write.exit.thread_crit_edge, %lor.lhs.false.i.w1_f1C_write.exit.thread_crit_edge, %if.end10.i.w1_f1C_write.exit.thread_crit_edge, %if.end.i77.w1_f1C_write.exit.thread_crit_edge, %while.body.w1_f1C_write.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %rdbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wrbuf.i) #8
  br label %out_up

if.end39:                                         ; preds = %if.then60.i, %if.end58.i.if.end39_crit_edge
  %59 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %master, align 4
  %call65.i = call i32 @w1_reset_bus(ptr noundef %60) #8
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %rdbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wrbuf.i) #8
  %add40 = add i32 %7, %idx.186
  %cmp22 = icmp ugt i32 %retval.0.i, %add40
  br i1 %cmp22, label %if.end39.while.body_crit_edge, label %if.end39.out_up_crit_edge

if.end39.out_up_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_up

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

out_up:                                           ; preds = %if.end39.out_up_crit_edge, %w1_f1C_write.exit.thread
  %count.addr.0 = phi i32 [ -5, %w1_f1C_write.exit.thread ], [ %retval.0.i, %if.end39.out_up_crit_edge ]
  %61 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %master, align 4
  %mutex42 = getelementptr inbounds %struct.w1_master, ptr %62, i32 0, i32 20
  call void @mutex_unlock(ptr noundef %mutex42) #8
  br label %cleanup

cleanup:                                          ; preds = %out_up, %do.end17, %do.end, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end17 ], [ %count.addr.0, %out_up ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_next_pullup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pio_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %wrbuf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp ne i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp1.not = icmp ne i32 %count, 1
  %or.cond.not = or i1 %cmp.not, %cmp1.not
  %cmp3 = icmp eq ptr %buf, null
  %or.cond12 = or i1 %cmp3, %or.cond.not
  br i1 %or.cond12, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  %master = getelementptr i8, ptr %kobj, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %wrbuf.i) #8
  %call.i = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.w1_f1C_read.exit_crit_edge

if.end.w1_f1C_read.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f1C_read.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = getelementptr inbounds [3 x i8], ptr %wrbuf.i, i32 0, i32 2
  %3 = getelementptr inbounds [3 x i8], ptr %wrbuf.i, i32 0, i32 1
  %4 = ptrtoint ptr %wrbuf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -16, ptr %wrbuf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %3, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %2, align 1
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %8, ptr noundef nonnull %wrbuf.i, i32 noundef 3) #8
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master, align 4
  %call5.i = call zeroext i8 @w1_read_block(ptr noundef %10, ptr noundef nonnull %buf, i32 noundef 1) #8
  %conv6.i = zext i8 %call5.i to i32
  br label %w1_f1C_read.exit

w1_f1C_read.exit:                                 ; preds = %if.end.i, %if.end.w1_f1C_read.exit_crit_edge
  %retval.0.i = phi i32 [ %conv6.i, %if.end.i ], [ -5, %if.end.w1_f1C_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf.i) #8
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  %mutex6 = getelementptr inbounds %struct.w1_master, ptr %12, i32 0, i32 20
  call void @mutex_unlock(ptr noundef %mutex6) #8
  br label %cleanup

cleanup:                                          ; preds = %w1_f1C_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %w1_f1C_read.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pio_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %wrbuf = alloca [3 x i8], align 1
  %ack = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %wrbuf) #8
  %0 = getelementptr inbounds [3 x i8], ptr %wrbuf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %wrbuf, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ack) #8
  %2 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ack, align 1, !annotation !65
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp ne i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp1.not = icmp ne i32 %count, 1
  %or.cond.not = or i1 %cmp.not, %cmp1.not
  %cmp3 = icmp eq ptr %buf, null
  %or.cond36 = or i1 %cmp3, %or.cond.not
  br i1 %or.cond36, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  %master = getelementptr i8, ptr %kobj, i32 -12
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  %mutex = getelementptr inbounds %struct.w1_master, ptr %4, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call4 = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %mutex7 = getelementptr inbounds %struct.w1_master, ptr %6, i32 0, i32 20
  tail call void @mutex_unlock(ptr noundef %mutex7) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 1
  %9 = or i8 %8, -4
  store i8 %9, ptr %buf, align 1
  %10 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 90, ptr %wrbuf, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %0, align 1
  %neg = xor i8 %9, -1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %neg, ptr %1, align 1
  %13 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %14, ptr noundef nonnull %wrbuf, i32 noundef 3) #8
  %15 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master, align 4
  %call16 = call zeroext i8 @w1_read_block(ptr noundef %16, ptr noundef nonnull %ack, i32 noundef 1) #8
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 4
  %mutex18 = getelementptr inbounds %struct.w1_master, ptr %18, i32 0, i32 20
  call void @mutex_unlock(ptr noundef %mutex18) #8
  %19 = ptrtoint ptr %ack to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ack, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %20)
  %cmp20.not = icmp eq i8 %20, -86
  %. = select i1 %cmp20.not, i32 1, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then5 ], [ -22, %entry.cleanup_crit_edge ], [ %., %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ack) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !40, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__param_strong_pullup, !1, !"__param_strong_pullup", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_strong_pulluptype187, !1, !"__UNIQUE_ID_strong_pulluptype187", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_w1_ds28e04__188_409_w1_family_1C_init6, !4, !"__initcall__kmod_w1_ds28e04__188_409_w1_family_1C_init6", i1 false, i1 false}
!4 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 409, i32 1}
!5 = !{ptr @__exitcall_w1_family_1C_exit, !4, !"__exitcall_w1_family_1C_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author189, !7, !"__UNIQUE_ID_author189", i1 false, i1 false}
!7 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 411, i32 1}
!8 = !{ptr @__UNIQUE_ID_description190, !9, !"__UNIQUE_ID_description190", i1 false, i1 false}
!9 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 412, i32 1}
!10 = !{ptr @__UNIQUE_ID_file191, !11, !"__UNIQUE_ID_file191", i1 false, i1 false}
!11 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 413, i32 1}
!12 = !{ptr @__UNIQUE_ID_license192, !11, !"__UNIQUE_ID_license192", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias193, !14, !"__UNIQUE_ID_alias193", i1 false, i1 false}
!14 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 414, i32 1}
!15 = !{ptr @__param_str_strong_pullup, !1, !"__param_str_strong_pullup", i1 false, i1 false}
!16 = !{ptr @w1_strong_pullup, !17, !"w1_strong_pullup", i1 false, i1 false}
!17 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 31, i32 12}
!18 = !{ptr @w1_family_1C, !19, !"w1_family_1C", i1 false, i1 false}
!19 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 405, i32 25}
!20 = !{ptr @w1_f1C_fops, !21, !"w1_f1C_fops", i1 false, i1 false}
!21 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 399, i32 35}
!22 = !{ptr @w1_enable_crccheck, !23, !"w1_enable_crccheck", i1 false, i1 false}
!23 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 35, i32 13}
!24 = !{ptr @w1_f1C_groups, !25, !"w1_f1C_groups", i1 false, i1 false}
!25 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 374, i32 38}
!26 = !{ptr @w1_f1C_group, !27, !"w1_f1C_group", i1 false, i1 false}
!27 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 369, i32 37}
!28 = !{ptr @w1_f1C_attrs, !29, !"w1_f1C_attrs", i1 false, i1 false}
!29 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 358, i32 26}
!30 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 356, i32 8}
!32 = !{ptr @dev_attr_crccheck, !31, !"dev_attr_crccheck", i1 false, i1 false}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 342, i32 25}
!35 = !{ptr @w1_f1C_bin_attrs, !36, !"w1_f1C_bin_attrs", i1 false, i1 false}
!36 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 363, i32 30}
!37 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 276, i32 8}
!39 = !{ptr @bin_attr_eeprom, !38, !"bin_attr_eeprom", i1 false, i1 false}
!40 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 237, i32 4}
!42 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @eeprom_write._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @eeprom_write._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 246, i32 5}
!50 = !{ptr @eeprom_write._entry.8, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @eeprom_write._entry_ptr.10, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/w1/slaves/w1_ds28e04.c", i32 337, i32 8}
!54 = !{ptr @bin_attr_pio, !53, !"bin_attr_pio", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i8 0, i8 2}
!65 = !{!"auto-init"}
