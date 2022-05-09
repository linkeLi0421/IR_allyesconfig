; ModuleID = '/llk/IR_all_yes/drivers/mfd/rsmu_spi.c_pt.bc'
source_filename = "../drivers/mfd/rsmu_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rsmu_ddata = type { ptr, ptr, %struct.mutex, i32, i16 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_rsmu_spi__230_264_rsmu_spi_init4 = internal global ptr @rsmu_spi_init, section ".initcall4.init", align 4
@rsmu_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @rsmu_spi_id, ptr @rsmu_spi_probe, ptr @rsmu_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rsmu_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rsmu_spi_exit = internal global ptr @rsmu_spi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [44 x i8] c"rsmu_spi.description=Renesas SMU SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [35 x i8] c"rsmu_spi.file=drivers/mfd/rsmu-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [21 x i8] c"rsmu_spi.license=GPL\00", section ".modinfo", align 1
@rsmu_spi_id = internal constant { [5 x %struct.spi_device_id], [44 x i8] } { [5 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"8a34000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 212992 }, %struct.spi_device_id { [32 x i8] c"8a34001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 212992 }, %struct.spi_device_id { [32 x i8] c"82p33810\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 210960 }, %struct.spi_device_id { [32 x i8] c"82p33811\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 210960 }, %struct.spi_device_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rsmu-spi\00", [23 x i8] zeroinitializer }, align 32
@rsmu_spi_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,8a34000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 212992 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,8a34001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 212992 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,82p33810\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 210960 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,82p33811\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 210960 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@rsmu_cm_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @rsmu_reg_read, ptr @rsmu_reg_write, ptr null, i8 0, i32 53248, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@rsmu_sabre_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @rsmu_reg_read, ptr @rsmu_reg_write, ptr null, i8 0, i32 1024, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@rsmu_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported RSMU device type: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rsmu_spi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mfd/rsmu_spi.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rsmu_spi_probe._entry_ptr = internal global ptr @rsmu_spi_probe._entry, section ".printk_index", align 4
@rsmu_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rsmu_spi:213:(cfg)->lock\00", [39 x i8] zeroinitializer }, align 32
@rsmu_spi_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rsmu_spi_probe._entry_ptr.9 = internal global ptr @rsmu_spi_probe._entry.7, section ".printk_index", align 4
@rsmu_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 142, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read offset address 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rsmu_reg_read\00", [18 x i8] zeroinitializer }, align 32
@rsmu_reg_read._entry_ptr = internal global ptr @rsmu_reg_read._entry, section ".printk_index", align 4
@rsmu_write_page_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.12, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rsmu_write_page_register\00", [39 x i8] zeroinitializer }, align 32
@rsmu_write_page_register._entry_ptr = internal global ptr @rsmu_write_page_register._entry, section ".printk_index", align 4
@rsmu_write_page_register._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set page offset 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@rsmu_write_page_register._entry_ptr.15 = internal global ptr @rsmu_write_page_register._entry.13, section ".printk_index", align 4
@rsmu_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to write offset address 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rsmu_reg_write\00", [17 x i8] zeroinitializer }, align 32
@rsmu_reg_write._entry_ptr = internal global ptr @rsmu_reg_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 210960, i64 212992]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 210960, i64 212992]
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"rsmu_spi_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 250, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"rsmu_spi_id\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 232, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 252, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"rsmu_spi_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 241, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"rsmu_cm_regmap_config\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 166, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [25 x i8] c"rsmu_sabre_regmap_config\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 175, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 209, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 213, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 216, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 142, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 112, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 122, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [26 x i8] c"../drivers/mfd/rsmu_spi.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 160, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_rsmu_spi_exit, ptr @__initcall__kmod_rsmu_spi__230_264_rsmu_spi_init4, ptr @rsmu_reg_read._entry, ptr @rsmu_reg_read._entry_ptr, ptr @rsmu_reg_write._entry, ptr @rsmu_reg_write._entry_ptr, ptr @rsmu_spi_exit, ptr @rsmu_spi_probe._entry, ptr @rsmu_spi_probe._entry.7, ptr @rsmu_spi_probe._entry_ptr, ptr @rsmu_spi_probe._entry_ptr.9, ptr @rsmu_write_page_register._entry, ptr @rsmu_write_page_register._entry.13, ptr @rsmu_write_page_register._entry_ptr, ptr @rsmu_write_page_register._entry_ptr.15, ptr @rsmu_spi_driver, ptr @rsmu_spi_id, ptr @.str, ptr @rsmu_spi_of_match, ptr @rsmu_cm_regmap_config, ptr @rsmu_sabre_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rsmu_spi_probe._key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsmu_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsmu_spi_id to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsmu_spi_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsmu_cm_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsmu_sabre_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsmu_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsmu_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsmu_spi_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsmu_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsmu_write_page_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsmu_write_page_register._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsmu_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rsmu_spi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @rsmu_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rsmu_spi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @rsmu_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsmu_spi_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %client) #5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %client, i32 noundef 108, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %client, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.rsmu_ddata, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %type, align 4
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 212992, label %if.end.sw.epilog_crit_edge
    i32 210960, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %client, ptr noundef nonnull @.str.1, i32 noundef %3) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %if.end.sw.epilog_crit_edge
  %cfg.0 = phi ptr [ @rsmu_sabre_regmap_config, %sw.bb5 ], [ @rsmu_cm_regmap_config, %if.end.sw.epilog_crit_edge ]
  %call9 = tail call ptr @__devm_regmap_init(ptr noundef %client, ptr noundef null, ptr noundef %client, ptr noundef nonnull %cfg.0, ptr noundef nonnull @rsmu_spi_probe._key, ptr noundef nonnull @.str.6) #5
  %regmap = getelementptr inbounds %struct.rsmu_ddata, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end19

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call9 to i32
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.8, i32 noundef %7) #8
  br label %cleanup

if.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 @rsmu_core_init(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %7, %if.then12 ], [ %call20, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsmu_spi_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %client, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rsmu_core_exit(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsmu_core_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsmu_reg_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %xfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %cmd.i = alloca [256 x i8], align 1
  %rsp.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = and i32 %reg, 127
  %conv1 = trunc i32 %reg to i16
  %call2 = tail call fastcc i32 @rsmu_write_page_register(ptr noundef %1, i16 noundef zeroext %conv1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = trunc i32 %reg to i8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #5
  %5 = getelementptr inbounds i8, ptr %xfer.i, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 84)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %cmd.i) #5
  %7 = getelementptr inbounds i8, ptr %cmd.i, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 255)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %rsp.i) #5
  %9 = call ptr @memset(ptr %rsp.i, i32 0, i32 256)
  %10 = or i8 %2, -128
  %11 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %cmd.i, align 1
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 1
  %12 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rsp.i, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len.i, align 4
  %14 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd.i, ptr %xfer.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 5
  %15 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bits_per_word.i, align 1
  %bits_per_word4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 8
  %17 = ptrtoint ptr %bits_per_word4.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %bits_per_word4.i, align 1
  %max_speed_hz.i = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_speed_hz.i, align 8
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 12
  %20 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %speed_hz.i, align 4
  %21 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.spi_message_add_tail.exit.i_crit_edge

if.end.spi_message_add_tail.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.spi_message_add_tail.exit.i_crit_edge
  %call5.i = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %cmp.i = icmp sgt i32 %call5.i, -1
  br i1 %cmp.i, label %rsmu_read_device.exit, label %rsmu_read_device.exit.thread

rsmu_read_device.exit.thread:                     ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rsp.i) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  br label %do.end

rsmu_read_device.exit:                            ; preds = %spi_message_add_tail.exit.i
  %arrayidx7.i = getelementptr inbounds [256 x i8], ptr %rsp.i, i32 0, i32 1
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %32, -1
  %33 = call ptr @memcpy(ptr %val, ptr %arrayidx7.i, i32 %sub.i)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rsp.i) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool4.not = icmp eq i32 %call5.i, 0
  br i1 %tobool4.not, label %rsmu_read_device.exit.cleanup_crit_edge, label %rsmu_read_device.exit.do.end_crit_edge

rsmu_read_device.exit.do.end_crit_edge:           ; preds = %rsmu_read_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

rsmu_read_device.exit.cleanup_crit_edge:          ; preds = %rsmu_read_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %rsmu_read_device.exit.do.end_crit_edge, %rsmu_read_device.exit.thread
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.10, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rsmu_read_device.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call5.i, %do.end ], [ 0, %rsmu_read_device.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsmu_reg_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  %xfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %cmd.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = trunc i32 %reg to i8
  %conv = and i8 %2, 127
  %conv2 = trunc i32 %reg to i16
  %call3 = tail call fastcc i32 @rsmu_write_page_register(ptr noundef %1, i16 noundef zeroext %conv2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv1 = trunc i32 %val to i8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #5
  %5 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %cmd.i) #5
  %7 = getelementptr inbounds i8, ptr %cmd.i, i32 1
  %8 = getelementptr inbounds i8, ptr %cmd.i, i32 2
  %9 = call ptr @memset(ptr %8, i32 0, i32 254)
  %10 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %cmd.i, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv1, ptr %7, align 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len.i, align 4
  %13 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmd.i, ptr %xfer.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 5
  %14 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bits_per_word.i, align 1
  %bits_per_word3.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 8
  %16 = ptrtoint ptr %bits_per_word3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %bits_per_word3.i, align 1
  %max_speed_hz.i = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 3
  %17 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_speed_hz.i, align 8
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 12
  %19 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %speed_hz.i, align 4
  %20 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.rsmu_write_device.exit_crit_edge

if.end.rsmu_write_device.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsmu_write_device.exit

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %29 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %rsmu_write_device.exit

rsmu_write_device.exit:                           ; preds = %if.end.i.i.i.i, %if.end.rsmu_write_device.exit_crit_edge
  %call4.i = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not, label %rsmu_write_device.exit.cleanup_crit_edge, label %do.end

rsmu_write_device.exit.cleanup_crit_edge:         ; preds = %rsmu_write_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %rsmu_write_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %conv7 = zext i8 %conv to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.16, i32 noundef %conv7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rsmu_write_device.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %call4.i, %do.end ], [ 0, %rsmu_write_device.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsmu_write_page_register(ptr nocapture noundef %rsmu, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  %xfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %cmd.i = alloca [256 x i8], align 1
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf)
  %buf.1.buf.1..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 1
  %0 = ptrtoint ptr %buf.1.buf.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf.1.buf.1..sroa_idx, align 1
  %type = getelementptr inbounds %struct.rsmu_ddata, ptr %rsmu, i32 0, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %2, label %do.end [
    i32 212992, label %sw.bb
    i32 210960, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = and i16 %reg, -128
  %5 = trunc i16 %reg to i8
  %conv4 = and i8 %5, -128
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4, ptr %buf, align 1
  %7 = lshr i16 %reg, 8
  %conv7 = trunc i16 %7 to i8
  %8 = ptrtoint ptr %buf.1.buf.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7, ptr %buf.1.buf.1..sroa_idx, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = lshr i16 %reg, 7
  %conv15 = trunc i16 %9 to i8
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv15, ptr %buf, align 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %rsmu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rsmu, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef %2) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  %page_reg.0 = phi i8 [ 127, %sw.bb9 ], [ 124, %sw.bb ]
  %bytes.0 = phi i32 [ 1, %sw.bb9 ], [ 2, %sw.bb ]
  %page.0 = phi i16 [ %9, %sw.bb9 ], [ %4, %sw.bb ]
  %page18 = getelementptr inbounds %struct.rsmu_ddata, ptr %rsmu, i32 0, i32 4
  %13 = ptrtoint ptr %page18 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %page18, align 4
  %conv20 = zext i16 %page.0 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %page.0)
  %cmp = icmp eq i16 %14, %page.0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %15 = ptrtoint ptr %rsmu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rsmu, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #5
  %17 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %cmd.i) #5
  %19 = getelementptr inbounds i8, ptr %cmd.i, i32 1
  %20 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %page_reg.0, ptr %cmd.i, align 1
  %21 = xor i32 %bytes.0, 255
  %22 = getelementptr i8, ptr %19, i32 %bytes.0
  %23 = call ptr @memset(ptr %22, i32 0, i32 %21)
  %24 = call ptr @memcpy(ptr %19, ptr %buf, i32 %bytes.0)
  %add.i = add nuw nsw i32 %bytes.0, 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %len.i, align 4
  %26 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cmd.i, ptr %xfer.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_device, ptr %16, i32 0, i32 5
  %27 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bits_per_word.i, align 1
  %bits_per_word3.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 8
  %29 = ptrtoint ptr %bits_per_word3.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %bits_per_word3.i, align 1
  %max_speed_hz.i = getelementptr inbounds %struct.spi_device, ptr %16, i32 0, i32 3
  %30 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_speed_hz.i, align 8
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 12
  %32 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %speed_hz.i, align 4
  %33 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %34 = call ptr @memset(ptr %33, i32 0, i32 40)
  %35 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %37 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.rsmu_write_device.exit_crit_edge

if.end.rsmu_write_device.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsmu_write_device.exit

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %40 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %42 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %rsmu_write_device.exit

rsmu_write_device.exit:                           ; preds = %if.end.i.i.i.i, %if.end.rsmu_write_device.exit_crit_edge
  %call4.i = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.else, label %do.end25

do.end25:                                         ; preds = %rsmu_write_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %rsmu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rsmu, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.14, i32 noundef %conv20) #8
  br label %cleanup

if.else:                                          ; preds = %rsmu_write_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %page18 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %page.0, ptr %page18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end25, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.else ], [ %call4.i, %do.end25 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsmu_core_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_rsmu_spi__230_264_rsmu_spi_init4, !1, !"__initcall__kmod_rsmu_spi__230_264_rsmu_spi_init4", i1 false, i1 false}
!1 = !{!"../drivers/mfd/rsmu_spi.c", i32 264, i32 1}
!2 = !{ptr @__exitcall_rsmu_spi_exit, !3, !"__exitcall_rsmu_spi_exit", i1 false, i1 false}
!3 = !{!"../drivers/mfd/rsmu_spi.c", i32 270, i32 1}
!4 = !{ptr @__UNIQUE_ID_description231, !5, !"__UNIQUE_ID_description231", i1 false, i1 false}
!5 = !{!"../drivers/mfd/rsmu_spi.c", i32 272, i32 1}
!6 = !{ptr @__UNIQUE_ID_file232, !7, !"__UNIQUE_ID_file232", i1 false, i1 false}
!7 = !{!"../drivers/mfd/rsmu_spi.c", i32 273, i32 1}
!8 = !{ptr @__UNIQUE_ID_license233, !7, !"__UNIQUE_ID_license233", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mfd/rsmu_spi.c", i32 252, i32 11}
!11 = !{ptr @rsmu_spi_driver, !12, !"rsmu_spi_driver", i1 false, i1 false}
!12 = !{!"../drivers/mfd/rsmu_spi.c", i32 250, i32 26}
!13 = !{ptr @rsmu_spi_id, !14, !"rsmu_spi_id", i1 false, i1 false}
!14 = !{!"../drivers/mfd/rsmu_spi.c", i32 232, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/rsmu_spi.c", i32 209, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rsmu_spi_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @rsmu_spi_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @rsmu_spi_probe._key, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/mfd/rsmu_spi.c", i32 213, i32 17}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/rsmu_spi.c", i32 216, i32 3}
!28 = !{ptr @rsmu_spi_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rsmu_spi_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @rsmu_cm_regmap_config, !31, !"rsmu_cm_regmap_config", i1 false, i1 false}
!31 = !{!"../drivers/mfd/rsmu_spi.c", i32 166, i32 35}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/rsmu_spi.c", i32 142, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rsmu_reg_read._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rsmu_reg_read._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/rsmu_spi.c", i32 112, i32 3}
!39 = !{ptr @rsmu_write_page_register._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rsmu_write_page_register._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/rsmu_spi.c", i32 122, i32 3}
!43 = !{ptr @rsmu_write_page_register._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rsmu_write_page_register._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/rsmu_spi.c", i32 160, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rsmu_reg_write._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @rsmu_reg_write._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @rsmu_sabre_regmap_config, !51, !"rsmu_sabre_regmap_config", i1 false, i1 false}
!51 = !{!"../drivers/mfd/rsmu_spi.c", i32 175, i32 35}
!52 = !{ptr @rsmu_spi_of_match, !53, !"rsmu_spi_of_match", i1 false, i1 false}
!53 = !{!"../drivers/mfd/rsmu_spi.c", i32 241, i32 34}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
