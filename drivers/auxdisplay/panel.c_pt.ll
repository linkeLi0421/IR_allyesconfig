; ModuleID = '/llk/IR_all_yes/drivers/auxdisplay/panel.c_pt.bc'
source_filename = "../drivers/auxdisplay/panel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.anon.70 = type { i8, i8, i32, i32, %struct.anon.71, ptr }
%struct.anon.71 = type { i32, i32, i32, i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.charlcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.charlcd = type { ptr, ptr, i32, i32, %struct.anon.72, ptr }
%struct.anon.72 = type { i32, i32 }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.hd44780_common = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.logical_input = type { %struct.list_head, i64, i64, i32, i32, i8, i8, i8, i8, i8, %union.anon.73 }
%union.anon.73 = type { %struct.anon.74, [8 x i8] }
%struct.anon.74 = type { ptr, ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description227 = internal constant [58 x i8] c"panel.description=Generic parallel port LCD/Keypad driver\00", section ".modinfo", align 1
@__param_str_parport = internal constant [14 x i8] c"panel.parport\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@parport = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_parport = internal constant %struct.kernel_param { ptr @__param_str_parport, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @parport } }, section "__param", align 4
@__UNIQUE_ID_parporttype228 = internal constant [27 x i8] c"panel.parmtype=parport:int\00", section ".modinfo", align 1
@__UNIQUE_ID_parport229 = internal constant [61 x i8] c"panel.parm=parport:Parallel port index (0=lpt1, 1=lpt2, ...)\00", section ".modinfo", align 1
@__param_str_profile = internal constant [14 x i8] c"panel.profile\00", align 1
@profile = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_profile = internal constant %struct.kernel_param { ptr @__param_str_profile, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @profile } }, section "__param", align 4
@__UNIQUE_ID_profiletype230 = internal constant [27 x i8] c"panel.parmtype=profile:int\00", section ".modinfo", align 1
@__UNIQUE_ID_profile231 = internal constant [111 x i8] c"panel.parm=profile:1=16x2 old kp; 2=serial 16x2, new kp; 3=16x2 hantronix; 4=16x2 nexcom; default=40x2, old kp\00", section ".modinfo", align 1
@__param_str_keypad_type = internal constant [18 x i8] c"panel.keypad_type\00", align 1
@keypad_type = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_keypad_type = internal constant %struct.kernel_param { ptr @__param_str_keypad_type, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @keypad_type } }, section "__param", align 4
@__UNIQUE_ID_keypad_typetype232 = internal constant [31 x i8] c"panel.parmtype=keypad_type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_keypad_type233 = internal constant [90 x i8] c"panel.parm=keypad_type:Keypad type: 0=none, 1=old 6 keys, 2=new 6+1 keys, 3=nexcom 4 keys\00", section ".modinfo", align 1
@__param_str_lcd_type = internal constant [15 x i8] c"panel.lcd_type\00", align 1
@lcd_type = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_lcd_type = internal constant %struct.kernel_param { ptr @__param_str_lcd_type, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_type } }, section "__param", align 4
@__UNIQUE_ID_lcd_typetype234 = internal constant [28 x i8] c"panel.parmtype=lcd_type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_type235 = internal constant [99 x i8] c"panel.parm=lcd_type:LCD type: 0=none, 1=compiled-in, 2=old, 3=serial ks0074, 4=hantronix, 5=nexcom\00", section ".modinfo", align 1
@__param_str_lcd_height = internal constant [17 x i8] c"panel.lcd_height\00", align 1
@lcd_height = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_lcd_height = internal constant %struct.kernel_param { ptr @__param_str_lcd_height, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_height } }, section "__param", align 4
@__UNIQUE_ID_lcd_heighttype236 = internal constant [30 x i8] c"panel.parmtype=lcd_height:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_height237 = internal constant [49 x i8] c"panel.parm=lcd_height:Number of lines on the LCD\00", section ".modinfo", align 1
@__param_str_lcd_width = internal constant [16 x i8] c"panel.lcd_width\00", align 1
@lcd_width = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_lcd_width = internal constant %struct.kernel_param { ptr @__param_str_lcd_width, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_width } }, section "__param", align 4
@__UNIQUE_ID_lcd_widthtype238 = internal constant [29 x i8] c"panel.parmtype=lcd_width:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_width239 = internal constant [50 x i8] c"panel.parm=lcd_width:Number of columns on the LCD\00", section ".modinfo", align 1
@__param_str_lcd_bwidth = internal constant [17 x i8] c"panel.lcd_bwidth\00", align 1
@lcd_bwidth = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_lcd_bwidth = internal constant %struct.kernel_param { ptr @__param_str_lcd_bwidth, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_bwidth } }, section "__param", align 4
@__UNIQUE_ID_lcd_bwidthtype240 = internal constant [30 x i8] c"panel.parmtype=lcd_bwidth:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_bwidth241 = internal constant [51 x i8] c"panel.parm=lcd_bwidth:Internal LCD line width (40)\00", section ".modinfo", align 1
@__param_str_lcd_hwidth = internal constant [17 x i8] c"panel.lcd_hwidth\00", align 1
@lcd_hwidth = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_lcd_hwidth = internal constant %struct.kernel_param { ptr @__param_str_lcd_hwidth, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_hwidth } }, section "__param", align 4
@__UNIQUE_ID_lcd_hwidthtype242 = internal constant [30 x i8] c"panel.parmtype=lcd_hwidth:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_hwidth243 = internal constant [53 x i8] c"panel.parm=lcd_hwidth:LCD line hardware address (64)\00", section ".modinfo", align 1
@__param_str_lcd_charset = internal constant [18 x i8] c"panel.lcd_charset\00", align 1
@lcd_charset = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_lcd_charset = internal constant %struct.kernel_param { ptr @__param_str_lcd_charset, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_charset } }, section "__param", align 4
@__UNIQUE_ID_lcd_charsettype244 = internal constant [31 x i8] c"panel.parmtype=lcd_charset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_charset245 = internal constant [63 x i8] c"panel.parm=lcd_charset:LCD character set: 0=standard, 1=KS0074\00", section ".modinfo", align 1
@__param_str_lcd_proto = internal constant [16 x i8] c"panel.lcd_proto\00", align 1
@lcd_proto = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_lcd_proto = internal constant %struct.kernel_param { ptr @__param_str_lcd_proto, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_proto } }, section "__param", align 4
@__UNIQUE_ID_lcd_prototype246 = internal constant [29 x i8] c"panel.parmtype=lcd_proto:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_proto247 = internal constant [86 x i8] c"panel.parm=lcd_proto:LCD communication: 0=parallel (//), 1=serial, 2=TI LCD Interface\00", section ".modinfo", align 1
@__param_str_lcd_e_pin = internal constant [16 x i8] c"panel.lcd_e_pin\00", align 1
@lcd_e_pin = internal global { i32, [28 x i8] } { i32 127, [28 x i8] zeroinitializer }, align 32
@__param_lcd_e_pin = internal constant %struct.kernel_param { ptr @__param_str_lcd_e_pin, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_e_pin } }, section "__param", align 4
@__UNIQUE_ID_lcd_e_pintype248 = internal constant [29 x i8] c"panel.parmtype=lcd_e_pin:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_e_pin249 = internal constant [95 x i8] c"panel.parm=lcd_e_pin:# of the // port pin connected to LCD 'E' signal, with polarity (-17..17)\00", section ".modinfo", align 1
@__param_str_lcd_rs_pin = internal constant [17 x i8] c"panel.lcd_rs_pin\00", align 1
@lcd_rs_pin = internal global { i32, [28 x i8] } { i32 127, [28 x i8] zeroinitializer }, align 32
@__param_lcd_rs_pin = internal constant %struct.kernel_param { ptr @__param_str_lcd_rs_pin, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_rs_pin } }, section "__param", align 4
@__UNIQUE_ID_lcd_rs_pintype250 = internal constant [30 x i8] c"panel.parmtype=lcd_rs_pin:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_rs_pin251 = internal constant [97 x i8] c"panel.parm=lcd_rs_pin:# of the // port pin connected to LCD 'RS' signal, with polarity (-17..17)\00", section ".modinfo", align 1
@__param_str_lcd_rw_pin = internal constant [17 x i8] c"panel.lcd_rw_pin\00", align 1
@lcd_rw_pin = internal global { i32, [28 x i8] } { i32 127, [28 x i8] zeroinitializer }, align 32
@__param_lcd_rw_pin = internal constant %struct.kernel_param { ptr @__param_str_lcd_rw_pin, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_rw_pin } }, section "__param", align 4
@__UNIQUE_ID_lcd_rw_pintype252 = internal constant [30 x i8] c"panel.parmtype=lcd_rw_pin:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_rw_pin253 = internal constant [97 x i8] c"panel.parm=lcd_rw_pin:# of the // port pin connected to LCD 'RW' signal, with polarity (-17..17)\00", section ".modinfo", align 1
@__param_str_lcd_cl_pin = internal constant [17 x i8] c"panel.lcd_cl_pin\00", align 1
@lcd_cl_pin = internal global { i32, [28 x i8] } { i32 127, [28 x i8] zeroinitializer }, align 32
@__param_lcd_cl_pin = internal constant %struct.kernel_param { ptr @__param_str_lcd_cl_pin, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_cl_pin } }, section "__param", align 4
@__UNIQUE_ID_lcd_cl_pintype254 = internal constant [30 x i8] c"panel.parmtype=lcd_cl_pin:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_cl_pin255 = internal constant [105 x i8] c"panel.parm=lcd_cl_pin:# of the // port pin connected to serial LCD 'SCL' signal, with polarity (-17..17)\00", section ".modinfo", align 1
@__param_str_lcd_da_pin = internal constant [17 x i8] c"panel.lcd_da_pin\00", align 1
@lcd_da_pin = internal global { i32, [28 x i8] } { i32 127, [28 x i8] zeroinitializer }, align 32
@__param_lcd_da_pin = internal constant %struct.kernel_param { ptr @__param_str_lcd_da_pin, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_da_pin } }, section "__param", align 4
@__UNIQUE_ID_lcd_da_pintype256 = internal constant [30 x i8] c"panel.parmtype=lcd_da_pin:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_da_pin257 = internal constant [105 x i8] c"panel.parm=lcd_da_pin:# of the // port pin connected to serial LCD 'SDA' signal, with polarity (-17..17)\00", section ".modinfo", align 1
@__param_str_lcd_bl_pin = internal constant [17 x i8] c"panel.lcd_bl_pin\00", align 1
@lcd_bl_pin = internal global { i32, [28 x i8] } { i32 127, [28 x i8] zeroinitializer }, align 32
@__param_lcd_bl_pin = internal constant %struct.kernel_param { ptr @__param_str_lcd_bl_pin, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_bl_pin } }, section "__param", align 4
@__UNIQUE_ID_lcd_bl_pintype258 = internal constant [30 x i8] c"panel.parmtype=lcd_bl_pin:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_bl_pin259 = internal constant [95 x i8] c"panel.parm=lcd_bl_pin:# of the // port pin connected to LCD backlight, with polarity (-17..17)\00", section ".modinfo", align 1
@__param_str_lcd_enabled = internal constant [18 x i8] c"panel.lcd_enabled\00", align 1
@lcd_enabled = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_lcd_enabled = internal constant %struct.kernel_param { ptr @__param_str_lcd_enabled, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @lcd_enabled } }, section "__param", align 4
@__UNIQUE_ID_lcd_enabledtype260 = internal constant [31 x i8] c"panel.parmtype=lcd_enabled:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lcd_enabled261 = internal constant [63 x i8] c"panel.parm=lcd_enabled:Deprecated option, use lcd_type instead\00", section ".modinfo", align 1
@__param_str_keypad_enabled = internal constant [21 x i8] c"panel.keypad_enabled\00", align 1
@keypad_enabled = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_keypad_enabled = internal constant %struct.kernel_param { ptr @__param_str_keypad_enabled, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @keypad_enabled } }, section "__param", align 4
@__UNIQUE_ID_keypad_enabledtype262 = internal constant [34 x i8] c"panel.parmtype=keypad_enabled:int\00", section ".modinfo", align 1
@__UNIQUE_ID_keypad_enabled263 = internal constant [69 x i8] c"panel.parm=keypad_enabled:Deprecated option, use keypad_type instead\00", section ".modinfo", align 1
@panel_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str, ptr null, ptr @panel_detach, ptr @panel_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_panel__264_1736_panel_init_module6 = internal global ptr @panel_init_module, section ".initcall6.init", align 4
@__exitcall_panel_cleanup_module = internal global ptr @panel_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author265 = internal constant [27 x i8] c"panel.author=Willy Tarreau\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [36 x i8] c"panel.file=drivers/auxdisplay/panel\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [18 x i8] c"panel.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panel\00", [26 x i8] zeroinitializer }, align 32
@pprt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@panel_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013panel: %s: port->number=%d parport=%d, nothing to unregister.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panel_detach\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/auxdisplay/panel.c\00", [37 x i8] zeroinitializer }, align 32
@panel_detach._entry_ptr = internal global ptr @panel_detach._entry, section ".printk_index", align 4
@scan_timer = internal global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@keypad.0 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@keypad_dev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 185, ptr @.str.4, ptr @keypad_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@keypad_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@lcd = internal global { %struct.anon.70, [56 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"keypad\00", [25 x i8] zeroinitializer }, align 32
@keypad_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @keypad_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @keypad_open, ptr null, ptr @keypad_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@keypad_buflen = internal global { i32, [28 x i8] } zeroinitializer, align 32
@keypad_read_wait = internal global { %struct.wait_queue_head, [44 x i8] } zeroinitializer, align 32
@keypad_buffer = internal global { [64 x i8], [32 x i8] } zeroinitializer, align 32
@keypad_start = internal global { i32, [28 x i8] } zeroinitializer, align 32
@keypad_available = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 1 }, [28 x i8] zeroinitializer }, align 32
@panel_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 1530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013panel: %s: port->number=%d parport=%d, already registered!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panel_attach\00", [19 x i8] zeroinitializer }, align 32
@panel_attach._entry_ptr = internal global ptr @panel_attach._entry, section ".printk_index", align 4
@panel_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013panel: %s: port->number=%d parport=%d, parport_register_device() failed\0A\00", [53 x i8] zeroinitializer }, align 32
@panel_attach._entry_ptr.9 = internal global ptr @panel_attach._entry.7, section ".printk_index", align 4
@panel_attach._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.3, i32 1547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013panel: could not claim access to parport%d. Aborting.\0A\00", [39 x i8] zeroinitializer }, align 32
@panel_attach._entry_ptr.12 = internal global ptr @panel_attach._entry.10, section ".printk_index", align 4
@selected_lcd_type = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@charlcd_ops = internal constant { %struct.charlcd_ops, [40 x i8] } { %struct.charlcd_ops { ptr @lcd_backlight, ptr @hd44780_common_print, ptr @hd44780_common_gotoxy, ptr @hd44780_common_home, ptr @hd44780_common_clear_display, ptr @hd44780_common_init_display, ptr @hd44780_common_shift_cursor, ptr @hd44780_common_shift_display, ptr @hd44780_common_display, ptr @hd44780_common_cursor, ptr @hd44780_common_blink, ptr @hd44780_common_fontsize, ptr @hd44780_common_lines, ptr @hd44780_common_redefine_char }, [40 x i8] zeroinitializer }, align 32
@lcd_char_conv_ks0074 = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\A2%&'()*+,-./0123456789:;<=>?\A0ABCDEFGHIJKLMNOPQRSTUVWXYZ\FA\FB\FC\1D\C4\96abcdefghijklmnopqrstuvwxyz\FD\FE\FF\CE \80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F @\B1\A1$\A3\FE_\22\C8a\14\97-\AD\96\80\8C\82\83'\8F\86\DD,\81o\15\8B\8A\84`\E2\E2\E2[[\AE\BC\A9\C5\BF\C6\F1\E3\E3\E3\E3D]\A8\E4\EC\EC\\x\AB\A6\E5^^\E6\AA\BE\7F\E7\AF{{\AF\BD\C8\A4\A5\C7\F6\A7\E8ii\ED}\A8\E4\EC\\\\%\AC\A6\EA\EF~\EB\B2y", [64 x i8] zeroinitializer }, align 32
@lcd_bits = internal global { [2 x [6 x [3 x i8]]], [60 x i8] } zeroinitializer, align 32
@pprt_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@bits = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pprt_lock\00", [22 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@keypad_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&keypad_read_wait\00", [46 x i8] zeroinitializer }, align 32
@keypad_profile = internal global { ptr, [28 x i8] } { ptr @old_keypad_profile, [28 x i8] zeroinitializer }, align 32
@old_keypad_profile = internal constant { [7 x [4 x [9 x i8]]], [36 x i8] } { [7 x [4 x [9 x i8]]] [[4 x [9 x i8]] [[9 x i8] c"S0\00\00\00\00\00\00\00", [9 x i8] c"Left\0A\00\00\00\00", [9 x i8] c"Left\0A\00\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] [[9 x i8] c"S1\00\00\00\00\00\00\00", [9 x i8] c"Down\0A\00\00\00\00", [9 x i8] c"Down\0A\00\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] [[9 x i8] c"S2\00\00\00\00\00\00\00", [9 x i8] c"Up\0A\00\00\00\00\00\00", [9 x i8] c"Up\0A\00\00\00\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] [[9 x i8] c"S3\00\00\00\00\00\00\00", [9 x i8] c"Right\0A\00\00\00", [9 x i8] c"Right\0A\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] [[9 x i8] c"S4\00\00\00\00\00\00\00", [9 x i8] c"Esc\0A\00\00\00\00\00", [9 x i8] c"Esc\0A\00\00\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] [[9 x i8] c"S5\00\00\00\00\00\00\00", [9 x i8] c"Ret\0A\00\00\00\00\00", [9 x i8] c"Ret\0A\00\00\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] zeroinitializer], [36 x i8] zeroinitializer }, align 32
@scan_mask_i = internal global { i8, [31 x i8] } zeroinitializer, align 32
@scan_mask_o = internal global { i8, [31 x i8] } zeroinitializer, align 32
@logical_inputs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @logical_inputs, ptr @logical_inputs }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.input_name2mask.sigtab = private unnamed_addr constant [11 x i8] c"EeSsPpAaBb\00", align 1
@init_scan_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&scan_timer)\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@inputs_stable = internal global { i1, [31 x i8] } zeroinitializer, align 32
@phys_curr = internal global { i64, [24 x i8] } zeroinitializer, align 32
@phys_prev = internal global { i64, [24 x i8] } zeroinitializer, align 32
@keypressed = internal global { i1, [31 x i8] } zeroinitializer, align 32
@phys_read = internal global { i64, [24 x i8] } zeroinitializer, align 32
@phys_read_prev = internal global { i64, [24 x i8] } zeroinitializer, align 32
@new_keypad_profile = internal constant { [8 x [4 x [9 x i8]]], [64 x i8] } { [8 x [4 x [9 x i8]]] [[4 x [9 x i8]] [[9 x i8] c"S0\00\00\00\00\00\00\00", [9 x i8] c"Left\0A\00\00\00\00", [9 x i8] c"Left\0A\00\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] [[9 x i8] c"S1\00\00\00\00\00\00\00", [9 x i8] c"Down\0A\00\00\00\00", [9 x i8] c"Down\0A\00\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] [[9 x i8] c"S2\00\00\00\00\00\00\00", [9 x i8] c"Up\0A\00\00\00\00\00\00", [9 x i8] c"Up\0A\00\00\00\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] [[9 x i8] c"S3\00\00\00\00\00\00\00", [9 x i8] c"Right\0A\00\00\00", [9 x i8] c"Right\0A\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] [[9 x i8] c"S4s5\00\00\00\00\00", [9 x i8] zeroinitializer, [9 x i8] c"Esc\0A\00\00\00\00\00", [9 x i8] c"Esc\0A\00\00\00\00\00"], [4 x [9 x i8]] [[9 x i8] c"s4S5\00\00\00\00\00", [9 x i8] zeroinitializer, [9 x i8] c"Ret\0A\00\00\00\00\00", [9 x i8] c"Ret\0A\00\00\00\00\00"], [4 x [9 x i8]] [[9 x i8] c"S4S5\00\00\00\00\00", [9 x i8] c"Help\0A\00\00\00\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer], [4 x [9 x i8]] zeroinitializer], [64 x i8] zeroinitializer }, align 32
@nexcom_keypad_profile = internal constant { [5 x [4 x [9 x i8]]], [44 x i8] } { [5 x [4 x [9 x i8]]] [[4 x [9 x i8]] [[9 x i8] c"a-p-e-\00\00\00", [9 x i8] c"Down\0A\00\00\00\00", [9 x i8] c"Down\0A\00\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] [[9 x i8] c"a-p-E-\00\00\00", [9 x i8] c"Ret\0A\00\00\00\00\00", [9 x i8] c"Ret\0A\00\00\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] [[9 x i8] c"a-P-E-\00\00\00", [9 x i8] c"Esc\0A\00\00\00\00\00", [9 x i8] c"Esc\0A\00\00\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] [[9 x i8] c"a-P-e-\00\00\00", [9 x i8] c"Up\0A\00\00\00\00\00\00", [9 x i8] c"Up\0A\00\00\00\00\00\00", [9 x i8] zeroinitializer], [4 x [9 x i8]] zeroinitializer], [44 x i8] zeroinitializer }, align 32
@panel_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013panel: panel driver disabled.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"panel_init_module\00", [46 x i8] zeroinitializer }, align 32
@panel_init_module._entry_ptr = internal global ptr @panel_init_module._entry, section ".printk_index", align 4
@panel_init_module._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 1719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013panel: could not register with parport. Aborting.\0A\00", [43 x i8] zeroinitializer }, align 32
@panel_init_module._entry_ptr.20 = internal global ptr @panel_init_module._entry.18, section ".printk_index", align 4
@panel_init_module._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 1725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016panel: panel driver registered on parport%d (io=0x%lx).\0A\00", [37 x i8] zeroinitializer }, align 32
@panel_init_module._entry_ptr.23 = internal global ptr @panel_init_module._entry.21, section ".printk_index", align 4
@panel_init_module._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.3, i32 1727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016panel: panel driver not yet registered\0A\00", [54 x i8] zeroinitializer }, align 32
@panel_init_module._entry_ptr.26 = internal global ptr @panel_init_module._entry.24, section ".printk_index", align 4
@switch.table.panel_init_module = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @old_keypad_profile, ptr @new_keypad_profile, ptr @nexcom_keypad_profile], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.30 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.31 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.32 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.33 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.34 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.35 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.39 = private unnamed_addr constant [8 x i8] c"parport\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 409, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 413, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"keypad_type\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 419, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"lcd_type\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 424, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"lcd_height\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 429, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"lcd_width\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 433, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"lcd_bwidth\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 437, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"lcd_hwidth\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 441, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"lcd_charset\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 445, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"lcd_proto\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 449, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"lcd_e_pin\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 463, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"lcd_rs_pin\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 468, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [11 x i8] c"lcd_rw_pin\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 473, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [11 x i8] c"lcd_cl_pin\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 478, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [11 x i8] c"lcd_da_pin\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 483, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"lcd_bl_pin\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 488, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"lcd_enabled\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 495, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"keypad_enabled\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 499, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"panel_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1611, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1612, i32 10 }
@___asan_gen_.99 = private unnamed_addr constant [5 x i8] c"pprt\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 400, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1585, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"scan_timer\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 405, i32 26 }
@___asan_gen_.117 = private unnamed_addr constant [9 x i8] c"keypad.0\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [11 x i8] c"keypad_dev\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1081, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"keypad_initialized\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 218, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1083, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"keypad_fops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1074, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"keypad_buflen\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 194, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"keypad_read_wait\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 197, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant [14 x i8] c"keypad_buffer\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 193, i32 13 }
@___asan_gen_.140 = private unnamed_addr constant [13 x i8] c"keypad_start\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 195, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"keypad_available\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 398, i32 17 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1529, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1540, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1546, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"selected_lcd_type\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 221, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant [12 x i8] c"charlcd_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 811, i32 33 }
@___asan_gen_.173 = private unnamed_addr constant [21 x i8] c"lcd_char_conv_ks0074\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 504, i32 28 }
@___asan_gen_.176 = private unnamed_addr constant [9 x i8] c"lcd_bits\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 250, i32 22 }
@___asan_gen_.179 = private unnamed_addr constant [10 x i8] c"pprt_lock\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 575, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 404, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1501, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [15 x i8] c"keypad_profile\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 573, i32 21 }
@___asan_gen_.197 = private unnamed_addr constant [19 x i8] c"old_keypad_profile\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 540, i32 19 }
@___asan_gen_.200 = private unnamed_addr constant [12 x i8] c"scan_mask_i\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 126, i32 13 }
@___asan_gen_.203 = private unnamed_addr constant [12 x i8] c"scan_mask_o\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 124, i32 13 }
@___asan_gen_.206 = private unnamed_addr constant [15 x i8] c"logical_inputs\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 164, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1367, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [14 x i8] c"inputs_stable\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [10 x i8] c"phys_curr\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 182, i32 14 }
@___asan_gen_.219 = private unnamed_addr constant [10 x i8] c"phys_prev\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 184, i32 14 }
@___asan_gen_.222 = private unnamed_addr constant [11 x i8] c"keypressed\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [10 x i8] c"phys_read\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 178, i32 14 }
@___asan_gen_.226 = private unnamed_addr constant [15 x i8] c"phys_read_prev\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 180, i32 14 }
@___asan_gen_.229 = private unnamed_addr constant [19 x i8] c"new_keypad_profile\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 551, i32 19 }
@___asan_gen_.232 = private unnamed_addr constant [22 x i8] c"nexcom_keypad_profile\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 564, i32 19 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1713, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1719, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1724, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private constant [30 x i8] c"../drivers/auxdisplay/panel.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1727, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [31 x i8] c"switch.table.panel_init_module\00", align 1
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_keypad_enabled263, ptr @__UNIQUE_ID_keypad_enabledtype262, ptr @__UNIQUE_ID_keypad_type233, ptr @__UNIQUE_ID_keypad_typetype232, ptr @__UNIQUE_ID_lcd_bl_pin259, ptr @__UNIQUE_ID_lcd_bl_pintype258, ptr @__UNIQUE_ID_lcd_bwidth241, ptr @__UNIQUE_ID_lcd_bwidthtype240, ptr @__UNIQUE_ID_lcd_charset245, ptr @__UNIQUE_ID_lcd_charsettype244, ptr @__UNIQUE_ID_lcd_cl_pin255, ptr @__UNIQUE_ID_lcd_cl_pintype254, ptr @__UNIQUE_ID_lcd_da_pin257, ptr @__UNIQUE_ID_lcd_da_pintype256, ptr @__UNIQUE_ID_lcd_e_pin249, ptr @__UNIQUE_ID_lcd_e_pintype248, ptr @__UNIQUE_ID_lcd_enabled261, ptr @__UNIQUE_ID_lcd_enabledtype260, ptr @__UNIQUE_ID_lcd_height237, ptr @__UNIQUE_ID_lcd_heighttype236, ptr @__UNIQUE_ID_lcd_hwidth243, ptr @__UNIQUE_ID_lcd_hwidthtype242, ptr @__UNIQUE_ID_lcd_proto247, ptr @__UNIQUE_ID_lcd_prototype246, ptr @__UNIQUE_ID_lcd_rs_pin251, ptr @__UNIQUE_ID_lcd_rs_pintype250, ptr @__UNIQUE_ID_lcd_rw_pin253, ptr @__UNIQUE_ID_lcd_rw_pintype252, ptr @__UNIQUE_ID_lcd_type235, ptr @__UNIQUE_ID_lcd_typetype234, ptr @__UNIQUE_ID_lcd_width239, ptr @__UNIQUE_ID_lcd_widthtype238, ptr @__UNIQUE_ID_license267, ptr @__UNIQUE_ID_parport229, ptr @__UNIQUE_ID_parporttype228, ptr @__UNIQUE_ID_profile231, ptr @__UNIQUE_ID_profiletype230, ptr @__exitcall_panel_cleanup_module, ptr @__initcall__kmod_panel__264_1736_panel_init_module6, ptr @__param_keypad_enabled, ptr @__param_keypad_type, ptr @__param_lcd_bl_pin, ptr @__param_lcd_bwidth, ptr @__param_lcd_charset, ptr @__param_lcd_cl_pin, ptr @__param_lcd_da_pin, ptr @__param_lcd_e_pin, ptr @__param_lcd_enabled, ptr @__param_lcd_height, ptr @__param_lcd_hwidth, ptr @__param_lcd_proto, ptr @__param_lcd_rs_pin, ptr @__param_lcd_rw_pin, ptr @__param_lcd_type, ptr @__param_lcd_width, ptr @__param_parport, ptr @__param_profile, ptr @panel_attach._entry, ptr @panel_attach._entry.10, ptr @panel_attach._entry.7, ptr @panel_attach._entry_ptr, ptr @panel_attach._entry_ptr.12, ptr @panel_attach._entry_ptr.9, ptr @panel_cleanup_module, ptr @panel_detach._entry, ptr @panel_detach._entry_ptr, ptr @panel_init_module._entry, ptr @panel_init_module._entry.18, ptr @panel_init_module._entry.21, ptr @panel_init_module._entry.24, ptr @panel_init_module._entry_ptr, ptr @panel_init_module._entry_ptr.20, ptr @panel_init_module._entry_ptr.23, ptr @panel_init_module._entry_ptr.26, ptr @parport, ptr @profile, ptr @keypad_type, ptr @lcd_type, ptr @lcd_height, ptr @lcd_width, ptr @lcd_bwidth, ptr @lcd_hwidth, ptr @lcd_charset, ptr @lcd_proto, ptr @lcd_e_pin, ptr @lcd_rs_pin, ptr @lcd_rw_pin, ptr @lcd_cl_pin, ptr @lcd_da_pin, ptr @lcd_bl_pin, ptr @lcd_enabled, ptr @keypad_enabled, ptr @panel_driver, ptr @.str, ptr @pprt, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @scan_timer, ptr @keypad.0, ptr @keypad_dev, ptr @keypad_initialized, ptr @lcd, ptr @.str.4, ptr @keypad_fops, ptr @keypad_buflen, ptr @keypad_read_wait, ptr @keypad_buffer, ptr @keypad_start, ptr @keypad_available, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @selected_lcd_type, ptr @charlcd_ops, ptr @lcd_char_conv_ks0074, ptr @lcd_bits, ptr @pprt_lock, ptr @bits, ptr @.str.13, ptr @keypad_init.__key, ptr @.str.14, ptr @keypad_profile, ptr @old_keypad_profile, ptr @scan_mask_i, ptr @scan_mask_o, ptr @logical_inputs, ptr @init_scan_timer.__key, ptr @.str.15, ptr @inputs_stable, ptr @phys_curr, ptr @phys_prev, ptr @keypressed, ptr @phys_read, ptr @phys_read_prev, ptr @new_keypad_profile, ptr @nexcom_keypad_profile, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @switch.table.panel_init_module], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_height to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_width to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_bwidth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_hwidth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_charset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_proto to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_e_pin to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_rs_pin to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_rw_pin to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_cl_pin to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_da_pin to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_bl_pin to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pprt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_dev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_buflen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_read_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_buffer to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_start to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_available to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_attach._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selected_lcd_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charlcd_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_char_conv_ks0074 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_bits to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pprt_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypad_profile to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_keypad_profile to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_mask_i to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_mask_o to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logical_inputs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_scan_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inputs_stable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phys_curr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phys_prev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypressed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phys_read to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phys_read_prev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_keypad_profile to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nexcom_keypad_profile to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_init_module._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_init_module._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_init_module._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.panel_init_module to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @panel_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @parport_unregister_driver(ptr noundef nonnull @panel_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @profile, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 5, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i32 2, ptr @selected_lcd_type, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 2, ptr @selected_lcd_type, align 4
  %2 = load i32, ptr @lcd_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %sw.bb1.if.end_crit_edge

sw.bb1.if.end_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  store i32 16, ptr @lcd_width, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1.if.end_crit_edge
  %3 = load i32, ptr @lcd_hwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp2 = icmp eq i32 %3, -1
  br i1 %cmp2, label %if.then3, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store i32 16, ptr @lcd_hwidth, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i32 3, ptr @selected_lcd_type, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i32 4, ptr @selected_lcd_type, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i32 5, ptr @selected_lcd_type, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i32 2, ptr @selected_lcd_type, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %if.then3, %if.end.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %selected_keypad_type.0 = phi i32 [ -1, %entry.sw.epilog_crit_edge ], [ 1, %sw.bb8 ], [ 3, %sw.bb7 ], [ 0, %sw.bb6 ], [ 2, %sw.bb5 ], [ 1, %if.then3 ], [ 1, %if.end.sw.epilog_crit_edge ], [ 1, %sw.bb ]
  %4 = load i32, ptr @keypad_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp9.not = icmp eq i32 %4, -1
  %spec.select = select i1 %cmp9.not, i32 %selected_keypad_type.0, i32 %4
  %5 = load i32, ptr @keypad_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp12.not = icmp eq i32 %5, -1
  %selected_keypad_type.2 = select i1 %cmp12.not, i32 %spec.select, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %selected_keypad_type.2)
  %cmp15 = icmp sgt i32 %selected_keypad_type.2, 0
  %frombool = zext i1 %cmp15 to i8
  store i8 %frombool, ptr @keypad.0, align 1
  %6 = load i32, ptr @lcd_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp16.not = icmp eq i32 %6, -1
  br i1 %cmp16.not, label %sw.epilog.if.end18_crit_edge, label %if.then17

sw.epilog.if.end18_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %6, ptr @selected_lcd_type, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %sw.epilog.if.end18_crit_edge
  %7 = load i32, ptr @lcd_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp19.not = icmp eq i32 %7, -1
  br i1 %cmp19.not, label %if.end21thread-pre-split, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %7, ptr @selected_lcd_type, align 4
  br label %if.end21

if.end21thread-pre-split:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %.pr = load i32, ptr @selected_lcd_type, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21thread-pre-split, %if.then20
  %8 = phi i32 [ %.pr, %if.end21thread-pre-split ], [ %7, %if.then20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp22 = icmp sgt i32 %8, 0
  %frombool23 = zext i1 %cmp22 to i8
  store i8 %frombool23, ptr @lcd, align 4
  br i1 %cmp22, label %if.then24, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %9 = load i32, ptr @lcd_charset, align 4
  store i32 %9, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 2), align 4
  %10 = load i32, ptr @lcd_proto, align 4
  store i32 %10, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 3), align 4
  %11 = load i32, ptr @lcd_e_pin, align 4
  store i32 %11, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4), align 4
  %12 = load i32, ptr @lcd_rs_pin, align 4
  store i32 %12, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 1), align 4
  %13 = load i32, ptr @lcd_rw_pin, align 4
  store i32 %13, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 2), align 4
  %14 = load i32, ptr @lcd_cl_pin, align 4
  store i32 %14, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 3), align 4
  %15 = load i32, ptr @lcd_da_pin, align 4
  store i32 %15, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 4), align 4
  %16 = load i32, ptr @lcd_bl_pin, align 4
  store i32 %16, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 5), align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  %switch.tableidx = add i32 %selected_keypad_type.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %17 = icmp ult i32 %switch.tableidx, 3
  br i1 %17, label %switch.lookup, label %if.end25.sw.epilog29_crit_edge

if.end25.sw.epilog29_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog29

switch.lookup:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.panel_init_module, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog29

sw.epilog29:                                      ; preds = %switch.lookup, %if.end25.sw.epilog29_crit_edge
  %.sink = phi ptr [ %switch.load, %switch.lookup ], [ null, %if.end25.sw.epilog29_crit_edge ]
  store ptr %.sink, ptr @keypad_profile, align 4
  %19 = select i1 %cmp22, i1 true, i1 %cmp15
  br i1 %19, label %if.end33, label %do.end

do.end:                                           ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end33:                                         ; preds = %sw.epilog29
  %call34 = tail call i32 @__parport_register_driver(ptr noundef nonnull @panel_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #14
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %20 = load ptr, ptr @pprt, align 4
  %tobool43.not = icmp eq ptr %20, null
  br i1 %tobool43.not, label %do.end52, label %do.end47

do.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %21 = load i32, ptr @parport, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %21, i32 noundef %25) #14
  br label %cleanup

do.end52:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.end47, %do.end39, %do.end
  %retval.0 = phi i32 [ %call34, %do.end39 ], [ -19, %do.end ], [ 0, %do.end52 ], [ 0, %do.end47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_detach(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %2 = load i32, ptr @parport, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp eq i32 %1, %2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @pprt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %1, i32 noundef %1) #14
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @scan_timer, i32 0, i32 2), align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @del_timer_sync(ptr noundef nonnull @scan_timer) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %5 = load i8, ptr @keypad.0, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @misc_deregister(ptr noundef nonnull @keypad_dev) #11
  store i1 false, ptr @keypad_initialized, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %6 = load i8, ptr @lcd, align 4, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load ptr, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 5), align 4
  %call13 = tail call i32 @charlcd_unregister(ptr noundef %7) #11
  store i8 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 1), align 1
  %8 = load ptr, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 5), align 4
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drvdata, align 4
  tail call void @kfree(ptr noundef %10) #11
  %11 = load ptr, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 5), align 4
  tail call void @kfree(ptr noundef %11) #11
  store ptr null, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 5), align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %12 = load ptr, ptr @pprt, align 4
  tail call void @parport_release(ptr noundef %12) #11
  %13 = load ptr, ptr @pprt, align 4
  tail call void @parport_unregister_device(ptr noundef %13) #11
  store ptr null, ptr @pprt, align 4
  br label %return

return:                                           ; preds = %if.end14, %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_attach(ptr noundef %port) #2 align 64 {
entry:
  %sigtab.i.i.i = alloca [11 x i8], align 1
  %panel_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %panel_cb) #11
  %0 = getelementptr inbounds %struct.pardev_cb, ptr %panel_cb, i32 0, i32 2
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %1 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %number, align 4
  %3 = load i32, ptr @parport, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp.not = icmp eq i32 %2, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @pprt, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %2, i32 noundef %2) #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = call ptr @memset(ptr %panel_cb, i32 0, i32 20)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pprt, ptr %0, align 4
  %call4 = call ptr @parport_register_dev_model(ptr noundef %port, ptr noundef nonnull @.str, ptr noundef nonnull %panel_cb, i32 noundef 0) #11
  store ptr %call4, ptr @pprt, align 4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end13

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number, align 4
  %9 = load i32, ptr @parport, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %8, i32 noundef %9) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  %call14 = call i32 @parport_claim(ptr noundef nonnull %call4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %10 = load i32, ptr @parport, align 4
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %10) #14
  br label %err_unreg_device

if.end22:                                         ; preds = %if.end13
  %11 = load i8, ptr @lcd, align 4, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool23.not = icmp eq i8 %11, 0
  br i1 %tobool23.not, label %if.end22.if.end30_crit_edge, label %if.then24

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then24:                                        ; preds = %if.end22
  %call.i = call ptr @hd44780_common_alloc() #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then24.lcd_init.exit_crit_edge, label %if.end.i

if.then24.lcd_init.exit_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %lcd_init.exit

if.end.i:                                         ; preds = %if.then24
  %call1.i = call ptr @charlcd_alloc() #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call.i) #11
  br label %lcd_init.exit

if.end4.i:                                        ; preds = %if.end.i
  %hd44780.i = getelementptr inbounds %struct.hd44780_common, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %hd44780.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @lcd, ptr %hd44780.i, align 4
  %drvdata.i = getelementptr inbounds %struct.charlcd, ptr %call1.i, i32 0, i32 5
  %13 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %drvdata.i, align 4
  %14 = load i32, ptr @lcd_height, align 4
  %height.i = getelementptr inbounds %struct.charlcd, ptr %call1.i, i32 0, i32 2
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height.i, align 4
  %16 = load i32, ptr @lcd_width, align 4
  %width.i = getelementptr inbounds %struct.charlcd, ptr %call1.i, i32 0, i32 3
  %17 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %width.i, align 4
  %18 = load i32, ptr @lcd_bwidth, align 4
  %bwidth.i = getelementptr inbounds %struct.hd44780_common, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %bwidth.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %bwidth.i, align 4
  %20 = load i32, ptr @lcd_hwidth, align 4
  %hwidth.i = getelementptr inbounds %struct.hd44780_common, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %hwidth.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %hwidth.i, align 4
  %22 = load i32, ptr @selected_lcd_type, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %22, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb9.i
    i32 5, label %sw.bb14.i
    i32 1, label %sw.bb19.i
  ]

sw.bb.i:                                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4), align 4
  store i32 14, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 1), align 4
  %24 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 40, ptr %width.i, align 4
  %25 = ptrtoint ptr %bwidth.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 40, ptr %bwidth.i, align 4
  %26 = ptrtoint ptr %hwidth.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 64, ptr %hwidth.i, align 4
  %27 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %height.i, align 4
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 1, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 3), align 4
  store i32 1, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 2), align 4
  store i32 14, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 5), align 4
  store i32 1, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 3), align 4
  store i32 2, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 4), align 4
  %28 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %width.i, align 4
  %29 = ptrtoint ptr %bwidth.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 40, ptr %bwidth.i, align 4
  %30 = ptrtoint ptr %hwidth.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %hwidth.i, align 4
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %height.i, align 4
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 2), align 4
  store i32 14, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4), align 4
  store i32 17, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 1), align 4
  store i32 16, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 2), align 4
  %32 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %width.i, align 4
  %33 = ptrtoint ptr %bwidth.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 40, ptr %bwidth.i, align 4
  %34 = ptrtoint ptr %hwidth.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64, ptr %hwidth.i, align 4
  %35 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %height.i, align 4
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 2), align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4), align 4
  store i32 17, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 1), align 4
  %36 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16, ptr %width.i, align 4
  %37 = ptrtoint ptr %bwidth.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 40, ptr %bwidth.i, align 4
  %38 = ptrtoint ptr %hwidth.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 64, ptr %hwidth.i, align 4
  %39 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %height.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb19.i, %sw.bb14.i, %sw.bb9.i, %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.not.i = icmp eq i32 %14, -1
  br i1 %cmp.not.i, label %sw.epilog.i.if.end27.i_crit_edge, label %if.then25.i

sw.epilog.i.if.end27.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.then25.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %14, ptr %height.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %sw.epilog.i.if.end27.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp28.not.i = icmp eq i32 %16, -1
  br i1 %cmp28.not.i, label %if.end27.i.if.end31.i_crit_edge, label %if.then29.i

if.end27.i.if.end31.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %16, ptr %width.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end31.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp32.not.i = icmp eq i32 %18, -1
  br i1 %cmp32.not.i, label %if.end31.i.if.end35.i_crit_edge, label %if.then33.i

if.end31.i.if.end35.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %bwidth.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %18, ptr %bwidth.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %if.end31.i.if.end35.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp36.not.i = icmp eq i32 %20, -1
  br i1 %cmp36.not.i, label %if.end35.i.if.end39.i_crit_edge, label %if.then37.i

if.end35.i.if.end39.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %hwidth.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %20, ptr %hwidth.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then37.i, %if.end35.i.if.end39.i_crit_edge
  %44 = load i32, ptr @lcd_charset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp40.not.i = icmp eq i32 %44, -1
  br i1 %cmp40.not.i, label %if.end39.i.if.end42.i_crit_edge, label %if.then41.i

if.end39.i.if.end42.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then41.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %44, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 2), align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then41.i, %if.end39.i.if.end42.i_crit_edge
  %45 = load i32, ptr @lcd_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp43.not.i = icmp eq i32 %45, -1
  br i1 %cmp43.not.i, label %if.end42.i.if.end45.i_crit_edge, label %if.then44.i

if.end42.i.if.end45.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

if.then44.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %45, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 3), align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then44.i, %if.end42.i.if.end45.i_crit_edge
  %46 = load i32, ptr @lcd_e_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %46)
  %cmp46.not.i = icmp eq i32 %46, 127
  br i1 %cmp46.not.i, label %if.end45.i.if.end48.i_crit_edge, label %if.then47.i

if.end45.i.if.end48.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %46, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4), align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %if.end45.i.if.end48.i_crit_edge
  %47 = load i32, ptr @lcd_rs_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %47)
  %cmp49.not.i = icmp eq i32 %47, 127
  br i1 %cmp49.not.i, label %if.end48.i.if.end51.i_crit_edge, label %if.then50.i

if.end48.i.if.end51.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %47, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 1), align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then50.i, %if.end48.i.if.end51.i_crit_edge
  %48 = load i32, ptr @lcd_rw_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %48)
  %cmp52.not.i = icmp eq i32 %48, 127
  br i1 %cmp52.not.i, label %if.end51.i.if.end54.i_crit_edge, label %if.then53.i

if.end51.i.if.end54.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.then53.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %48, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 2), align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %if.end51.i.if.end54.i_crit_edge
  %49 = load i32, ptr @lcd_cl_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %49)
  %cmp55.not.i = icmp eq i32 %49, 127
  br i1 %cmp55.not.i, label %if.end54.i.if.end57.i_crit_edge, label %if.then56.i

if.end54.i.if.end57.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.then56.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %49, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 3), align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then56.i, %if.end54.i.if.end57.i_crit_edge
  %50 = load i32, ptr @lcd_da_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %50)
  %cmp58.not.i = icmp eq i32 %50, 127
  br i1 %cmp58.not.i, label %if.end57.i.if.end60.i_crit_edge, label %if.then59.i

if.end57.i.if.end60.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

if.then59.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %50, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 4), align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then59.i, %if.end57.i.if.end60.i_crit_edge
  %51 = load i32, ptr @lcd_bl_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %51)
  %cmp61.not.i = icmp eq i32 %51, 127
  br i1 %cmp61.not.i, label %if.end60.i.if.end63.i_crit_edge, label %if.then62.i

if.end60.i.if.end63.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63.i

if.then62.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %51, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 5), align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then62.i, %if.end60.i.if.end63.i_crit_edge
  %52 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp65.i = icmp slt i32 %53, 1
  br i1 %cmp65.i, label %if.then66.i, label %if.end63.i.if.end68.i_crit_edge

if.end63.i.if.end68.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68.i

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 40, ptr %width.i, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then66.i, %if.end63.i.if.end68.i_crit_edge
  %55 = ptrtoint ptr %bwidth.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp70.i = icmp slt i32 %56, 1
  br i1 %cmp70.i, label %if.then71.i, label %if.end68.i.if.end73.i_crit_edge

if.end68.i.if.end73.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73.i

if.then71.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %bwidth.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 40, ptr %bwidth.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then71.i, %if.end68.i.if.end73.i_crit_edge
  %58 = ptrtoint ptr %hwidth.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp75.i = icmp slt i32 %59, 1
  br i1 %cmp75.i, label %if.then76.i, label %if.end73.i.if.end78.i_crit_edge

if.end73.i.if.end78.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78.i

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %hwidth.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 64, ptr %hwidth.i, align 4
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then76.i, %if.end73.i.if.end78.i_crit_edge
  %61 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp80.i = icmp slt i32 %62, 1
  br i1 %cmp80.i, label %if.then81.i, label %if.end78.i.if.end83.i_crit_edge

if.end78.i.if.end83.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83.i

if.then81.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %height.i, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then81.i, %if.end78.i.if.end83.i_crit_edge
  %64 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 3), align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %64, label %if.else106.i [
    i32 1, label %if.then85.i
    i32 0, label %if.then93.i
  ]

if.then85.i:                                      ; preds = %if.end83.i
  %66 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @charlcd_ops, ptr %call1.i, align 4
  %write_data.i = getelementptr inbounds %struct.hd44780_common, ptr %call.i, i32 0, i32 4
  %67 = ptrtoint ptr %write_data.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @lcd_write_data_s, ptr %write_data.i, align 4
  %write_cmd.i = getelementptr inbounds %struct.hd44780_common, ptr %call.i, i32 0, i32 5
  %68 = ptrtoint ptr %write_cmd.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @lcd_write_cmd_s, ptr %write_cmd.i, align 4
  %69 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %69)
  %cmp86.i = icmp eq i32 %69, 127
  br i1 %cmp86.i, label %if.then87.i, label %if.then85.i.if.end88.i_crit_edge

if.then85.i.if.end88.i_crit_edge:                 ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i

if.then87.i:                                      ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 1, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 3), align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then87.i, %if.then85.i.if.end88.i_crit_edge
  %70 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %70)
  %cmp89.i = icmp eq i32 %70, 127
  br i1 %cmp89.i, label %if.then90.i, label %if.end88.i.if.end111.i_crit_edge

if.end88.i.if.end111.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111.i

if.then90.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 2, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 4), align 4
  br label %if.end111.i

if.then93.i:                                      ; preds = %if.end83.i
  %71 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @charlcd_ops, ptr %call1.i, align 4
  %write_data95.i = getelementptr inbounds %struct.hd44780_common, ptr %call.i, i32 0, i32 4
  %72 = ptrtoint ptr %write_data95.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @lcd_write_data_p8, ptr %write_data95.i, align 4
  %write_cmd96.i = getelementptr inbounds %struct.hd44780_common, ptr %call.i, i32 0, i32 5
  %73 = ptrtoint ptr %write_cmd96.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @lcd_write_cmd_p8, ptr %write_cmd96.i, align 4
  %74 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %74)
  %cmp97.i = icmp eq i32 %74, 127
  br i1 %cmp97.i, label %if.then98.i, label %if.then93.i.if.end99.i_crit_edge

if.then93.i.if.end99.i_crit_edge:                 ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99.i

if.then98.i:                                      ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 14, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4), align 4
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then98.i, %if.then93.i.if.end99.i_crit_edge
  %75 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %75)
  %cmp100.i = icmp eq i32 %75, 127
  br i1 %cmp100.i, label %if.then101.i, label %if.end99.i.if.end102.i_crit_edge

if.end99.i.if.end102.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102.i

if.then101.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 17, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 1), align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then101.i, %if.end99.i.if.end102.i_crit_edge
  %76 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %76)
  %cmp103.i = icmp eq i32 %76, 127
  br i1 %cmp103.i, label %if.then104.i, label %if.end102.i.if.end111.i_crit_edge

if.end102.i.if.end111.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111.i

if.then104.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 16, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 2), align 4
  br label %if.end111.i

if.else106.i:                                     ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @charlcd_ops, ptr %call1.i, align 4
  %write_data108.i = getelementptr inbounds %struct.hd44780_common, ptr %call.i, i32 0, i32 4
  %78 = ptrtoint ptr %write_data108.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @lcd_write_data_tilcd, ptr %write_data108.i, align 4
  %write_cmd109.i = getelementptr inbounds %struct.hd44780_common, ptr %call.i, i32 0, i32 5
  %79 = ptrtoint ptr %write_cmd109.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @lcd_write_cmd_tilcd, ptr %write_cmd109.i, align 4
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.else106.i, %if.then104.i, %if.end102.i.if.end111.i_crit_edge, %if.then90.i, %if.end88.i.if.end111.i_crit_edge
  %80 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %80)
  %cmp112.i = icmp eq i32 %80, 127
  br i1 %cmp112.i, label %if.then113.i, label %if.end111.i.if.end114.i_crit_edge

if.end111.i.if.end114.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114.i

if.then113.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 127, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 5), align 4
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then113.i, %if.end111.i.if.end114.i_crit_edge
  %81 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %81)
  %cmp115.i = icmp eq i32 %81, 127
  br i1 %cmp115.i, label %if.then116.i, label %if.end114.i.if.end117.i_crit_edge

if.end114.i.if.end117.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117.i

if.then116.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4), align 4
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then116.i, %if.end114.i.if.end117.i_crit_edge
  %82 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %82)
  %cmp118.i = icmp eq i32 %82, 127
  br i1 %cmp118.i, label %if.then119.i, label %if.end117.i.if.end120.i_crit_edge

if.end117.i.if.end120.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120.i

if.then119.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 1), align 4
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then119.i, %if.end117.i.if.end120.i_crit_edge
  %83 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %83)
  %cmp121.i = icmp eq i32 %83, 127
  br i1 %cmp121.i, label %if.then122.i, label %if.end120.i.if.end123.i_crit_edge

if.end120.i.if.end123.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123.i

if.then122.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 2), align 4
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then122.i, %if.end120.i.if.end123.i_crit_edge
  %84 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %84)
  %cmp124.i = icmp eq i32 %84, 127
  br i1 %cmp124.i, label %if.then125.i, label %if.end123.i.if.end126.i_crit_edge

if.end123.i.if.end126.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126.i

if.then125.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 5), align 4
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then125.i, %if.end123.i.if.end126.i_crit_edge
  %85 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %85)
  %cmp127.i = icmp eq i32 %85, 127
  br i1 %cmp127.i, label %if.then128.i, label %if.end126.i.if.end129.i_crit_edge

if.end126.i.if.end129.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129.i

if.then128.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 3), align 4
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then128.i, %if.end126.i.if.end129.i_crit_edge
  %86 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %86)
  %cmp130.i = icmp eq i32 %86, 127
  br i1 %cmp130.i, label %if.then131.i, label %if.end129.i.if.end132.i_crit_edge

if.end129.i.if.end132.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132.i

if.then131.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 4), align 4
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then131.i, %if.end129.i.if.end132.i_crit_edge
  %87 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 2), align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %87, label %if.end132.i.if.else138.i_crit_edge [
    i32 -1, label %if.end135.thread.i
    i32 1, label %if.end132.i.if.end140.i_crit_edge
  ]

if.end132.i.if.end140.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140.i

if.end132.i.if.else138.i_crit_edge:               ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else138.i

if.end135.thread.i:                               ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 2), align 4
  br label %if.else138.i

if.else138.i:                                     ; preds = %if.end135.thread.i, %if.end132.i.if.else138.i_crit_edge
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.else138.i, %if.end132.i.if.end140.i_crit_edge
  %.sink.i = phi ptr [ null, %if.else138.i ], [ @lcd_char_conv_ks0074, %if.end132.i.if.end140.i_crit_edge ]
  %char_conv139.i = getelementptr inbounds %struct.charlcd, ptr %call1.i, i32 0, i32 1
  %89 = ptrtoint ptr %char_conv139.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %.sink.i, ptr %char_conv139.i, align 4
  %90 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4), align 4
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1), align 1
  store i8 0, ptr @lcd_bits, align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 1), align 1
  store i8 -1, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 0, i32 2), align 1
  store i8 -1, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i = icmp eq i32 %90, 0
  br i1 %cmp.i.i, label %if.end140.i.pin_to_bits.exit.i_crit_edge, label %if.end.i.i

if.end140.i.pin_to_bits.exit.i_crit_edge:         ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pin_to_bits.exit.i

if.end.i.i:                                       ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp6.i.i = icmp slt i32 %90, 0
  %pin.lobit.i.i = lshr i32 %90, 31
  %91 = call i32 @llvm.abs.i32(i32 %90, i1 false) #11
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %91, label %if.end.i.i.pin_to_bits.exit.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %if.end.i.i.if.else.i.i_crit_edge
    i32 3, label %if.end.i.i.if.else.i.i_crit_edge54
    i32 4, label %if.end.i.i.if.else.i.i_crit_edge55
    i32 5, label %if.end.i.i.if.else.i.i_crit_edge56
    i32 6, label %if.end.i.i.if.else.i.i_crit_edge57
    i32 7, label %if.end.i.i.if.else.i.i_crit_edge58
    i32 8, label %if.end.i.i.if.else.i.i_crit_edge59
    i32 9, label %if.end.i.i.if.else.i.i_crit_edge60
    i32 14, label %sw.bb12.i.i
    i32 16, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge
    i32 17, label %sw.bb17.i.i
  ]

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i.i

if.end.i.i.if.else.i.i_crit_edge60:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.end.i.i.if.else.i.i_crit_edge59:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.end.i.i.if.else.i.i_crit_edge58:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.end.i.i.if.else.i.i_crit_edge57:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.end.i.i.if.else.i.i_crit_edge56:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.end.i.i.if.else.i.i_crit_edge55:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.end.i.i.if.else.i.i_crit_edge54:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.end.i.i.if.else.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.end.i.i.pin_to_bits.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pin_to_bits.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.i.i = xor i1 %cmp6.i.i, true
  %lnot.ext.i.i = zext i1 %lnot.i.i to i32
  br label %cleanup.sink.split.i.i

sw.bb12.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot14.i.i = xor i1 %cmp6.i.i, true
  %lnot.ext15.i.i = zext i1 %lnot14.i.i to i32
  br label %cleanup.sink.split.i.i

sw.bb17.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot19.i.i = xor i1 %cmp6.i.i, true
  %lnot.ext20.i.i = zext i1 %lnot19.i.i to i32
  br label %cleanup.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end.i.i.if.else.i.i_crit_edge, %if.end.i.i.if.else.i.i_crit_edge54, %if.end.i.i.if.else.i.i_crit_edge55, %if.end.i.i.if.else.i.i_crit_edge56, %if.end.i.i.if.else.i.i_crit_edge57, %if.end.i.i.if.else.i.i_crit_edge58, %if.end.i.i.if.else.i.i_crit_edge59, %if.end.i.i.if.else.i.i_crit_edge60
  %sub11.i.i = add nsw i32 %91, -2
  %shl.i.i = shl nuw nsw i32 1, %sub11.i.i
  %93 = trunc i32 %shl.i.i to i8
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.else.i.i, %sw.bb17.i.i, %sw.bb12.i.i, %sw.bb.i.i, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %.sink335.i = phi i8 [ %93, %if.else.i.i ], [ 1, %sw.bb.i.i ], [ 2, %sw.bb12.i.i ], [ 8, %sw.bb17.i.i ], [ 4, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %.sink334.i = phi ptr [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 0, i32 2), %if.else.i.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 2), %sw.bb.i.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 2), %sw.bb12.i.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 2), %sw.bb17.i.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 2), %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %inv.0.ph.sink.i.i = phi i32 [ %pin.lobit.i.i, %if.else.i.i ], [ %lnot.ext.i.i, %sw.bb.i.i ], [ %lnot.ext15.i.i, %sw.bb12.i.i ], [ %lnot.ext20.i.i, %sw.bb17.i.i ], [ %pin.lobit.i.i, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %c_val.sink.i.i = phi ptr [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1), %if.else.i.i ], [ @lcd_bits, %sw.bb.i.i ], [ @lcd_bits, %sw.bb12.i.i ], [ @lcd_bits, %sw.bb17.i.i ], [ @lcd_bits, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %94 = xor i8 %.sink335.i, -1
  %95 = ptrtoint ptr %.sink334.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %.sink334.i, align 1
  %96 = xor i32 %inv.0.ph.sink.i.i, 1
  %arrayidx30.i.i = getelementptr i8, ptr %c_val.sink.i.i, i32 %96
  %97 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %.sink335.i, ptr %arrayidx30.i.i, align 1
  br label %pin_to_bits.exit.i

pin_to_bits.exit.i:                               ; preds = %cleanup.sink.split.i.i, %if.end.i.i.pin_to_bits.exit.i_crit_edge, %if.end140.i.pin_to_bits.exit.i_crit_edge
  %98 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 1), align 4
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 1), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 1, i32 1), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 1), align 1
  store i8 -1, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 1, i32 2), align 1
  store i8 -1, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.i202.i = icmp eq i32 %98, 0
  br i1 %cmp.i202.i, label %pin_to_bits.exit.i.pin_to_bits.exit227.i_crit_edge, label %if.end.i205.i

pin_to_bits.exit.i.pin_to_bits.exit227.i_crit_edge: ; preds = %pin_to_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pin_to_bits.exit227.i

if.end.i205.i:                                    ; preds = %pin_to_bits.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp6.i203.i = icmp slt i32 %98, 0
  %pin.lobit.i204.i = lshr i32 %98, 31
  %99 = call i32 @llvm.abs.i32(i32 %98, i1 false) #11
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %99, label %if.end.i205.i.pin_to_bits.exit227.i_crit_edge [
    i32 1, label %sw.bb.i208.i
    i32 2, label %if.end.i205.i.if.else.i221.i_crit_edge
    i32 3, label %if.end.i205.i.if.else.i221.i_crit_edge61
    i32 4, label %if.end.i205.i.if.else.i221.i_crit_edge62
    i32 5, label %if.end.i205.i.if.else.i221.i_crit_edge63
    i32 6, label %if.end.i205.i.if.else.i221.i_crit_edge64
    i32 7, label %if.end.i205.i.if.else.i221.i_crit_edge65
    i32 8, label %if.end.i205.i.if.else.i221.i_crit_edge66
    i32 9, label %if.end.i205.i.if.else.i221.i_crit_edge67
    i32 14, label %sw.bb12.i211.i
    i32 16, label %if.end.i205.i.cleanup.sink.split.i226.i_crit_edge
    i32 17, label %sw.bb17.i214.i
  ]

if.end.i205.i.cleanup.sink.split.i226.i_crit_edge: ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i226.i

if.end.i205.i.if.else.i221.i_crit_edge67:         ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i221.i

if.end.i205.i.if.else.i221.i_crit_edge66:         ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i221.i

if.end.i205.i.if.else.i221.i_crit_edge65:         ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i221.i

if.end.i205.i.if.else.i221.i_crit_edge64:         ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i221.i

if.end.i205.i.if.else.i221.i_crit_edge63:         ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i221.i

if.end.i205.i.if.else.i221.i_crit_edge62:         ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i221.i

if.end.i205.i.if.else.i221.i_crit_edge61:         ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i221.i

if.end.i205.i.if.else.i221.i_crit_edge:           ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i221.i

if.end.i205.i.pin_to_bits.exit227.i_crit_edge:    ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pin_to_bits.exit227.i

sw.bb.i208.i:                                     ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.i206.i = xor i1 %cmp6.i203.i, true
  %lnot.ext.i207.i = zext i1 %lnot.i206.i to i32
  br label %cleanup.sink.split.i226.i

sw.bb12.i211.i:                                   ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot14.i209.i = xor i1 %cmp6.i203.i, true
  %lnot.ext15.i210.i = zext i1 %lnot14.i209.i to i32
  br label %cleanup.sink.split.i226.i

sw.bb17.i214.i:                                   ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot19.i212.i = xor i1 %cmp6.i203.i, true
  %lnot.ext20.i213.i = zext i1 %lnot19.i212.i to i32
  br label %cleanup.sink.split.i226.i

if.else.i221.i:                                   ; preds = %if.end.i205.i.if.else.i221.i_crit_edge, %if.end.i205.i.if.else.i221.i_crit_edge61, %if.end.i205.i.if.else.i221.i_crit_edge62, %if.end.i205.i.if.else.i221.i_crit_edge63, %if.end.i205.i.if.else.i221.i_crit_edge64, %if.end.i205.i.if.else.i221.i_crit_edge65, %if.end.i205.i.if.else.i221.i_crit_edge66, %if.end.i205.i.if.else.i221.i_crit_edge67
  %sub11.i218.i = add nsw i32 %99, -2
  %shl.i219.i = shl nuw nsw i32 1, %sub11.i218.i
  %101 = trunc i32 %shl.i219.i to i8
  br label %cleanup.sink.split.i226.i

cleanup.sink.split.i226.i:                        ; preds = %if.else.i221.i, %sw.bb17.i214.i, %sw.bb12.i211.i, %sw.bb.i208.i, %if.end.i205.i.cleanup.sink.split.i226.i_crit_edge
  %.sink338.i = phi i8 [ %101, %if.else.i221.i ], [ 1, %sw.bb.i208.i ], [ 2, %sw.bb12.i211.i ], [ 8, %sw.bb17.i214.i ], [ 4, %if.end.i205.i.cleanup.sink.split.i226.i_crit_edge ]
  %.sink337.i = phi ptr [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 1, i32 2), %if.else.i221.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 2), %sw.bb.i208.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 2), %sw.bb12.i211.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 2), %sw.bb17.i214.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 2), %if.end.i205.i.cleanup.sink.split.i226.i_crit_edge ]
  %inv.0.ph.sink.i222.i = phi i32 [ %pin.lobit.i204.i, %if.else.i221.i ], [ %lnot.ext.i207.i, %sw.bb.i208.i ], [ %lnot.ext15.i210.i, %sw.bb12.i211.i ], [ %lnot.ext20.i213.i, %sw.bb17.i214.i ], [ %pin.lobit.i204.i, %if.end.i205.i.cleanup.sink.split.i226.i_crit_edge ]
  %c_val.sink.i223.i = phi ptr [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 1), %if.else.i221.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1), %sw.bb.i208.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1), %sw.bb12.i211.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1), %sw.bb17.i214.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1), %if.end.i205.i.cleanup.sink.split.i226.i_crit_edge ]
  %102 = xor i8 %.sink338.i, -1
  %103 = ptrtoint ptr %.sink337.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %.sink337.i, align 1
  %104 = xor i32 %inv.0.ph.sink.i222.i, 1
  %arrayidx30.i225.i = getelementptr i8, ptr %c_val.sink.i223.i, i32 %104
  %105 = ptrtoint ptr %arrayidx30.i225.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %.sink338.i, ptr %arrayidx30.i225.i, align 1
  br label %pin_to_bits.exit227.i

pin_to_bits.exit227.i:                            ; preds = %cleanup.sink.split.i226.i, %if.end.i205.i.pin_to_bits.exit227.i_crit_edge, %pin_to_bits.exit.i.pin_to_bits.exit227.i_crit_edge
  %106 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 2), align 4
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 2), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 2, i32 1), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 1), align 1
  store i8 -1, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 2, i32 2), align 1
  store i8 -1, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.i228.i = icmp eq i32 %106, 0
  br i1 %cmp.i228.i, label %pin_to_bits.exit227.i.pin_to_bits.exit253.i_crit_edge, label %if.end.i231.i

pin_to_bits.exit227.i.pin_to_bits.exit253.i_crit_edge: ; preds = %pin_to_bits.exit227.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pin_to_bits.exit253.i

if.end.i231.i:                                    ; preds = %pin_to_bits.exit227.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp6.i229.i = icmp slt i32 %106, 0
  %pin.lobit.i230.i = lshr i32 %106, 31
  %107 = call i32 @llvm.abs.i32(i32 %106, i1 false) #11
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %107, label %if.end.i231.i.pin_to_bits.exit253.i_crit_edge [
    i32 1, label %sw.bb.i234.i
    i32 2, label %if.end.i231.i.if.else.i247.i_crit_edge
    i32 3, label %if.end.i231.i.if.else.i247.i_crit_edge68
    i32 4, label %if.end.i231.i.if.else.i247.i_crit_edge69
    i32 5, label %if.end.i231.i.if.else.i247.i_crit_edge70
    i32 6, label %if.end.i231.i.if.else.i247.i_crit_edge71
    i32 7, label %if.end.i231.i.if.else.i247.i_crit_edge72
    i32 8, label %if.end.i231.i.if.else.i247.i_crit_edge73
    i32 9, label %if.end.i231.i.if.else.i247.i_crit_edge74
    i32 14, label %sw.bb12.i237.i
    i32 16, label %if.end.i231.i.cleanup.sink.split.i252.i_crit_edge
    i32 17, label %sw.bb17.i240.i
  ]

if.end.i231.i.cleanup.sink.split.i252.i_crit_edge: ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i252.i

if.end.i231.i.if.else.i247.i_crit_edge74:         ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i247.i

if.end.i231.i.if.else.i247.i_crit_edge73:         ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i247.i

if.end.i231.i.if.else.i247.i_crit_edge72:         ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i247.i

if.end.i231.i.if.else.i247.i_crit_edge71:         ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i247.i

if.end.i231.i.if.else.i247.i_crit_edge70:         ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i247.i

if.end.i231.i.if.else.i247.i_crit_edge69:         ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i247.i

if.end.i231.i.if.else.i247.i_crit_edge68:         ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i247.i

if.end.i231.i.if.else.i247.i_crit_edge:           ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i247.i

if.end.i231.i.pin_to_bits.exit253.i_crit_edge:    ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pin_to_bits.exit253.i

sw.bb.i234.i:                                     ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.i232.i = xor i1 %cmp6.i229.i, true
  %lnot.ext.i233.i = zext i1 %lnot.i232.i to i32
  br label %cleanup.sink.split.i252.i

sw.bb12.i237.i:                                   ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot14.i235.i = xor i1 %cmp6.i229.i, true
  %lnot.ext15.i236.i = zext i1 %lnot14.i235.i to i32
  br label %cleanup.sink.split.i252.i

sw.bb17.i240.i:                                   ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot19.i238.i = xor i1 %cmp6.i229.i, true
  %lnot.ext20.i239.i = zext i1 %lnot19.i238.i to i32
  br label %cleanup.sink.split.i252.i

if.else.i247.i:                                   ; preds = %if.end.i231.i.if.else.i247.i_crit_edge, %if.end.i231.i.if.else.i247.i_crit_edge68, %if.end.i231.i.if.else.i247.i_crit_edge69, %if.end.i231.i.if.else.i247.i_crit_edge70, %if.end.i231.i.if.else.i247.i_crit_edge71, %if.end.i231.i.if.else.i247.i_crit_edge72, %if.end.i231.i.if.else.i247.i_crit_edge73, %if.end.i231.i.if.else.i247.i_crit_edge74
  %sub11.i244.i = add nsw i32 %107, -2
  %shl.i245.i = shl nuw nsw i32 1, %sub11.i244.i
  %109 = trunc i32 %shl.i245.i to i8
  br label %cleanup.sink.split.i252.i

cleanup.sink.split.i252.i:                        ; preds = %if.else.i247.i, %sw.bb17.i240.i, %sw.bb12.i237.i, %sw.bb.i234.i, %if.end.i231.i.cleanup.sink.split.i252.i_crit_edge
  %.sink341.i = phi i8 [ %109, %if.else.i247.i ], [ 1, %sw.bb.i234.i ], [ 2, %sw.bb12.i237.i ], [ 8, %sw.bb17.i240.i ], [ 4, %if.end.i231.i.cleanup.sink.split.i252.i_crit_edge ]
  %.sink340.i = phi ptr [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 2, i32 2), %if.else.i247.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 2), %sw.bb.i234.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 2), %sw.bb12.i237.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 2), %sw.bb17.i240.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 2), %if.end.i231.i.cleanup.sink.split.i252.i_crit_edge ]
  %inv.0.ph.sink.i248.i = phi i32 [ %pin.lobit.i230.i, %if.else.i247.i ], [ %lnot.ext.i233.i, %sw.bb.i234.i ], [ %lnot.ext15.i236.i, %sw.bb12.i237.i ], [ %lnot.ext20.i239.i, %sw.bb17.i240.i ], [ %pin.lobit.i230.i, %if.end.i231.i.cleanup.sink.split.i252.i_crit_edge ]
  %c_val.sink.i249.i = phi ptr [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 2), %if.else.i247.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2), %sw.bb.i234.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2), %sw.bb12.i237.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2), %sw.bb17.i240.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2), %if.end.i231.i.cleanup.sink.split.i252.i_crit_edge ]
  %110 = xor i8 %.sink341.i, -1
  %111 = ptrtoint ptr %.sink340.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %.sink340.i, align 1
  %112 = xor i32 %inv.0.ph.sink.i248.i, 1
  %arrayidx30.i251.i = getelementptr i8, ptr %c_val.sink.i249.i, i32 %112
  %113 = ptrtoint ptr %arrayidx30.i251.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %.sink341.i, ptr %arrayidx30.i251.i, align 1
  br label %pin_to_bits.exit253.i

pin_to_bits.exit253.i:                            ; preds = %cleanup.sink.split.i252.i, %if.end.i231.i.pin_to_bits.exit253.i_crit_edge, %pin_to_bits.exit227.i.pin_to_bits.exit253.i_crit_edge
  %114 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 5), align 4
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 3, i32 1), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 1), align 1
  store i8 -1, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 3, i32 2), align 1
  store i8 -1, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.i254.i = icmp eq i32 %114, 0
  br i1 %cmp.i254.i, label %pin_to_bits.exit253.i.pin_to_bits.exit279.i_crit_edge, label %if.end.i257.i

pin_to_bits.exit253.i.pin_to_bits.exit279.i_crit_edge: ; preds = %pin_to_bits.exit253.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pin_to_bits.exit279.i

if.end.i257.i:                                    ; preds = %pin_to_bits.exit253.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp6.i255.i = icmp slt i32 %114, 0
  %pin.lobit.i256.i = lshr i32 %114, 31
  %115 = call i32 @llvm.abs.i32(i32 %114, i1 false) #11
  %116 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %115, label %if.end.i257.i.pin_to_bits.exit279.i_crit_edge [
    i32 1, label %sw.bb.i260.i
    i32 2, label %if.end.i257.i.if.else.i273.i_crit_edge
    i32 3, label %if.end.i257.i.if.else.i273.i_crit_edge75
    i32 4, label %if.end.i257.i.if.else.i273.i_crit_edge76
    i32 5, label %if.end.i257.i.if.else.i273.i_crit_edge77
    i32 6, label %if.end.i257.i.if.else.i273.i_crit_edge78
    i32 7, label %if.end.i257.i.if.else.i273.i_crit_edge79
    i32 8, label %if.end.i257.i.if.else.i273.i_crit_edge80
    i32 9, label %if.end.i257.i.if.else.i273.i_crit_edge81
    i32 14, label %sw.bb12.i263.i
    i32 16, label %if.end.i257.i.cleanup.sink.split.i278.i_crit_edge
    i32 17, label %sw.bb17.i266.i
  ]

if.end.i257.i.cleanup.sink.split.i278.i_crit_edge: ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i278.i

if.end.i257.i.if.else.i273.i_crit_edge81:         ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i273.i

if.end.i257.i.if.else.i273.i_crit_edge80:         ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i273.i

if.end.i257.i.if.else.i273.i_crit_edge79:         ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i273.i

if.end.i257.i.if.else.i273.i_crit_edge78:         ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i273.i

if.end.i257.i.if.else.i273.i_crit_edge77:         ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i273.i

if.end.i257.i.if.else.i273.i_crit_edge76:         ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i273.i

if.end.i257.i.if.else.i273.i_crit_edge75:         ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i273.i

if.end.i257.i.if.else.i273.i_crit_edge:           ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i273.i

if.end.i257.i.pin_to_bits.exit279.i_crit_edge:    ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pin_to_bits.exit279.i

sw.bb.i260.i:                                     ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.i258.i = xor i1 %cmp6.i255.i, true
  %lnot.ext.i259.i = zext i1 %lnot.i258.i to i32
  br label %cleanup.sink.split.i278.i

sw.bb12.i263.i:                                   ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot14.i261.i = xor i1 %cmp6.i255.i, true
  %lnot.ext15.i262.i = zext i1 %lnot14.i261.i to i32
  br label %cleanup.sink.split.i278.i

sw.bb17.i266.i:                                   ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot19.i264.i = xor i1 %cmp6.i255.i, true
  %lnot.ext20.i265.i = zext i1 %lnot19.i264.i to i32
  br label %cleanup.sink.split.i278.i

if.else.i273.i:                                   ; preds = %if.end.i257.i.if.else.i273.i_crit_edge, %if.end.i257.i.if.else.i273.i_crit_edge75, %if.end.i257.i.if.else.i273.i_crit_edge76, %if.end.i257.i.if.else.i273.i_crit_edge77, %if.end.i257.i.if.else.i273.i_crit_edge78, %if.end.i257.i.if.else.i273.i_crit_edge79, %if.end.i257.i.if.else.i273.i_crit_edge80, %if.end.i257.i.if.else.i273.i_crit_edge81
  %sub11.i270.i = add nsw i32 %115, -2
  %shl.i271.i = shl nuw nsw i32 1, %sub11.i270.i
  %117 = trunc i32 %shl.i271.i to i8
  br label %cleanup.sink.split.i278.i

cleanup.sink.split.i278.i:                        ; preds = %if.else.i273.i, %sw.bb17.i266.i, %sw.bb12.i263.i, %sw.bb.i260.i, %if.end.i257.i.cleanup.sink.split.i278.i_crit_edge
  %.sink344.i = phi i8 [ %117, %if.else.i273.i ], [ 1, %sw.bb.i260.i ], [ 2, %sw.bb12.i263.i ], [ 8, %sw.bb17.i266.i ], [ 4, %if.end.i257.i.cleanup.sink.split.i278.i_crit_edge ]
  %.sink343.i = phi ptr [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 3, i32 2), %if.else.i273.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 2), %sw.bb.i260.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 2), %sw.bb12.i263.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 2), %sw.bb17.i266.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 2), %if.end.i257.i.cleanup.sink.split.i278.i_crit_edge ]
  %inv.0.ph.sink.i274.i = phi i32 [ %pin.lobit.i256.i, %if.else.i273.i ], [ %lnot.ext.i259.i, %sw.bb.i260.i ], [ %lnot.ext15.i262.i, %sw.bb12.i263.i ], [ %lnot.ext20.i265.i, %sw.bb17.i266.i ], [ %pin.lobit.i256.i, %if.end.i257.i.cleanup.sink.split.i278.i_crit_edge ]
  %c_val.sink.i275.i = phi ptr [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 3), %if.else.i273.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3), %sw.bb.i260.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3), %sw.bb12.i263.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3), %sw.bb17.i266.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3), %if.end.i257.i.cleanup.sink.split.i278.i_crit_edge ]
  %118 = xor i8 %.sink344.i, -1
  %119 = ptrtoint ptr %.sink343.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %.sink343.i, align 1
  %120 = xor i32 %inv.0.ph.sink.i274.i, 1
  %arrayidx30.i277.i = getelementptr i8, ptr %c_val.sink.i275.i, i32 %120
  %121 = ptrtoint ptr %arrayidx30.i277.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %.sink344.i, ptr %arrayidx30.i277.i, align 1
  br label %pin_to_bits.exit279.i

pin_to_bits.exit279.i:                            ; preds = %cleanup.sink.split.i278.i, %if.end.i257.i.pin_to_bits.exit279.i_crit_edge, %pin_to_bits.exit253.i.pin_to_bits.exit279.i_crit_edge
  %122 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 3), align 4
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 4), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 4, i32 1), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 1), align 1
  store i8 -1, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 4, i32 2), align 1
  store i8 -1, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp.i280.i = icmp eq i32 %122, 0
  br i1 %cmp.i280.i, label %pin_to_bits.exit279.i.pin_to_bits.exit305.i_crit_edge, label %if.end.i283.i

pin_to_bits.exit279.i.pin_to_bits.exit305.i_crit_edge: ; preds = %pin_to_bits.exit279.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pin_to_bits.exit305.i

if.end.i283.i:                                    ; preds = %pin_to_bits.exit279.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp6.i281.i = icmp slt i32 %122, 0
  %pin.lobit.i282.i = lshr i32 %122, 31
  %123 = call i32 @llvm.abs.i32(i32 %122, i1 false) #11
  %124 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %123, label %if.end.i283.i.pin_to_bits.exit305.i_crit_edge [
    i32 1, label %sw.bb.i286.i
    i32 2, label %if.end.i283.i.if.else.i299.i_crit_edge
    i32 3, label %if.end.i283.i.if.else.i299.i_crit_edge82
    i32 4, label %if.end.i283.i.if.else.i299.i_crit_edge83
    i32 5, label %if.end.i283.i.if.else.i299.i_crit_edge84
    i32 6, label %if.end.i283.i.if.else.i299.i_crit_edge85
    i32 7, label %if.end.i283.i.if.else.i299.i_crit_edge86
    i32 8, label %if.end.i283.i.if.else.i299.i_crit_edge87
    i32 9, label %if.end.i283.i.if.else.i299.i_crit_edge88
    i32 14, label %sw.bb12.i289.i
    i32 16, label %if.end.i283.i.cleanup.sink.split.i304.i_crit_edge
    i32 17, label %sw.bb17.i292.i
  ]

if.end.i283.i.cleanup.sink.split.i304.i_crit_edge: ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i304.i

if.end.i283.i.if.else.i299.i_crit_edge88:         ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i299.i

if.end.i283.i.if.else.i299.i_crit_edge87:         ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i299.i

if.end.i283.i.if.else.i299.i_crit_edge86:         ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i299.i

if.end.i283.i.if.else.i299.i_crit_edge85:         ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i299.i

if.end.i283.i.if.else.i299.i_crit_edge84:         ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i299.i

if.end.i283.i.if.else.i299.i_crit_edge83:         ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i299.i

if.end.i283.i.if.else.i299.i_crit_edge82:         ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i299.i

if.end.i283.i.if.else.i299.i_crit_edge:           ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i299.i

if.end.i283.i.pin_to_bits.exit305.i_crit_edge:    ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pin_to_bits.exit305.i

sw.bb.i286.i:                                     ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.i284.i = xor i1 %cmp6.i281.i, true
  %lnot.ext.i285.i = zext i1 %lnot.i284.i to i32
  br label %cleanup.sink.split.i304.i

sw.bb12.i289.i:                                   ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot14.i287.i = xor i1 %cmp6.i281.i, true
  %lnot.ext15.i288.i = zext i1 %lnot14.i287.i to i32
  br label %cleanup.sink.split.i304.i

sw.bb17.i292.i:                                   ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot19.i290.i = xor i1 %cmp6.i281.i, true
  %lnot.ext20.i291.i = zext i1 %lnot19.i290.i to i32
  br label %cleanup.sink.split.i304.i

if.else.i299.i:                                   ; preds = %if.end.i283.i.if.else.i299.i_crit_edge, %if.end.i283.i.if.else.i299.i_crit_edge82, %if.end.i283.i.if.else.i299.i_crit_edge83, %if.end.i283.i.if.else.i299.i_crit_edge84, %if.end.i283.i.if.else.i299.i_crit_edge85, %if.end.i283.i.if.else.i299.i_crit_edge86, %if.end.i283.i.if.else.i299.i_crit_edge87, %if.end.i283.i.if.else.i299.i_crit_edge88
  %sub11.i296.i = add nsw i32 %123, -2
  %shl.i297.i = shl nuw nsw i32 1, %sub11.i296.i
  %125 = trunc i32 %shl.i297.i to i8
  br label %cleanup.sink.split.i304.i

cleanup.sink.split.i304.i:                        ; preds = %if.else.i299.i, %sw.bb17.i292.i, %sw.bb12.i289.i, %sw.bb.i286.i, %if.end.i283.i.cleanup.sink.split.i304.i_crit_edge
  %.sink347.i = phi i8 [ %125, %if.else.i299.i ], [ 1, %sw.bb.i286.i ], [ 2, %sw.bb12.i289.i ], [ 8, %sw.bb17.i292.i ], [ 4, %if.end.i283.i.cleanup.sink.split.i304.i_crit_edge ]
  %.sink346.i = phi ptr [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 4, i32 2), %if.else.i299.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 2), %sw.bb.i286.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 2), %sw.bb12.i289.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 2), %sw.bb17.i292.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 2), %if.end.i283.i.cleanup.sink.split.i304.i_crit_edge ]
  %inv.0.ph.sink.i300.i = phi i32 [ %pin.lobit.i282.i, %if.else.i299.i ], [ %lnot.ext.i285.i, %sw.bb.i286.i ], [ %lnot.ext15.i288.i, %sw.bb12.i289.i ], [ %lnot.ext20.i291.i, %sw.bb17.i292.i ], [ %pin.lobit.i282.i, %if.end.i283.i.cleanup.sink.split.i304.i_crit_edge ]
  %c_val.sink.i301.i = phi ptr [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 4), %if.else.i299.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4), %sw.bb.i286.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4), %sw.bb12.i289.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4), %sw.bb17.i292.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4), %if.end.i283.i.cleanup.sink.split.i304.i_crit_edge ]
  %126 = xor i8 %.sink347.i, -1
  %127 = ptrtoint ptr %.sink346.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %.sink346.i, align 1
  %128 = xor i32 %inv.0.ph.sink.i300.i, 1
  %arrayidx30.i303.i = getelementptr i8, ptr %c_val.sink.i301.i, i32 %128
  %129 = ptrtoint ptr %arrayidx30.i303.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %.sink347.i, ptr %arrayidx30.i303.i, align 1
  br label %pin_to_bits.exit305.i

pin_to_bits.exit305.i:                            ; preds = %cleanup.sink.split.i304.i, %if.end.i283.i.pin_to_bits.exit305.i_crit_edge, %pin_to_bits.exit279.i.pin_to_bits.exit305.i_crit_edge
  %130 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 4), align 4
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 5), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 5, i32 1), align 1
  store i8 0, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 1), align 1
  store i8 -1, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 5, i32 2), align 1
  store i8 -1, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp.i306.i = icmp eq i32 %130, 0
  br i1 %cmp.i306.i, label %pin_to_bits.exit305.i.lcd_init.exit.thread_crit_edge, label %if.end.i309.i

pin_to_bits.exit305.i.lcd_init.exit.thread_crit_edge: ; preds = %pin_to_bits.exit305.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lcd_init.exit.thread

if.end.i309.i:                                    ; preds = %pin_to_bits.exit305.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp6.i307.i = icmp slt i32 %130, 0
  %pin.lobit.i308.i = lshr i32 %130, 31
  %131 = call i32 @llvm.abs.i32(i32 %130, i1 false) #11
  %132 = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %131, label %if.end.i309.i.lcd_init.exit.thread_crit_edge [
    i32 1, label %sw.bb.i312.i
    i32 2, label %if.end.i309.i.if.else.i325.i_crit_edge
    i32 3, label %if.end.i309.i.if.else.i325.i_crit_edge89
    i32 4, label %if.end.i309.i.if.else.i325.i_crit_edge90
    i32 5, label %if.end.i309.i.if.else.i325.i_crit_edge91
    i32 6, label %if.end.i309.i.if.else.i325.i_crit_edge92
    i32 7, label %if.end.i309.i.if.else.i325.i_crit_edge93
    i32 8, label %if.end.i309.i.if.else.i325.i_crit_edge94
    i32 9, label %if.end.i309.i.if.else.i325.i_crit_edge95
    i32 14, label %sw.bb12.i315.i
    i32 16, label %if.end.i309.i.cleanup.sink.split.i330.i_crit_edge
    i32 17, label %sw.bb17.i318.i
  ]

if.end.i309.i.cleanup.sink.split.i330.i_crit_edge: ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i330.i

if.end.i309.i.if.else.i325.i_crit_edge95:         ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i325.i

if.end.i309.i.if.else.i325.i_crit_edge94:         ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i325.i

if.end.i309.i.if.else.i325.i_crit_edge93:         ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i325.i

if.end.i309.i.if.else.i325.i_crit_edge92:         ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i325.i

if.end.i309.i.if.else.i325.i_crit_edge91:         ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i325.i

if.end.i309.i.if.else.i325.i_crit_edge90:         ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i325.i

if.end.i309.i.if.else.i325.i_crit_edge89:         ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i325.i

if.end.i309.i.if.else.i325.i_crit_edge:           ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i325.i

if.end.i309.i.lcd_init.exit.thread_crit_edge:     ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lcd_init.exit.thread

sw.bb.i312.i:                                     ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot.i310.i = xor i1 %cmp6.i307.i, true
  %lnot.ext.i311.i = zext i1 %lnot.i310.i to i32
  br label %cleanup.sink.split.i330.i

sw.bb12.i315.i:                                   ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot14.i313.i = xor i1 %cmp6.i307.i, true
  %lnot.ext15.i314.i = zext i1 %lnot14.i313.i to i32
  br label %cleanup.sink.split.i330.i

sw.bb17.i318.i:                                   ; preds = %if.end.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  %lnot19.i316.i = xor i1 %cmp6.i307.i, true
  %lnot.ext20.i317.i = zext i1 %lnot19.i316.i to i32
  br label %cleanup.sink.split.i330.i

if.else.i325.i:                                   ; preds = %if.end.i309.i.if.else.i325.i_crit_edge, %if.end.i309.i.if.else.i325.i_crit_edge89, %if.end.i309.i.if.else.i325.i_crit_edge90, %if.end.i309.i.if.else.i325.i_crit_edge91, %if.end.i309.i.if.else.i325.i_crit_edge92, %if.end.i309.i.if.else.i325.i_crit_edge93, %if.end.i309.i.if.else.i325.i_crit_edge94, %if.end.i309.i.if.else.i325.i_crit_edge95
  %sub11.i322.i = add nsw i32 %131, -2
  %shl.i323.i = shl nuw nsw i32 1, %sub11.i322.i
  %133 = trunc i32 %shl.i323.i to i8
  br label %cleanup.sink.split.i330.i

cleanup.sink.split.i330.i:                        ; preds = %if.else.i325.i, %sw.bb17.i318.i, %sw.bb12.i315.i, %sw.bb.i312.i, %if.end.i309.i.cleanup.sink.split.i330.i_crit_edge
  %.sink350.i = phi i8 [ %133, %if.else.i325.i ], [ 1, %sw.bb.i312.i ], [ 2, %sw.bb12.i315.i ], [ 8, %sw.bb17.i318.i ], [ 4, %if.end.i309.i.cleanup.sink.split.i330.i_crit_edge ]
  %.sink349.i = phi ptr [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 5, i32 2), %if.else.i325.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 2), %sw.bb.i312.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 2), %sw.bb12.i315.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 2), %sw.bb17.i318.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 2), %if.end.i309.i.cleanup.sink.split.i330.i_crit_edge ]
  %inv.0.ph.sink.i326.i = phi i32 [ %pin.lobit.i308.i, %if.else.i325.i ], [ %lnot.ext.i311.i, %sw.bb.i312.i ], [ %lnot.ext15.i314.i, %sw.bb12.i315.i ], [ %lnot.ext20.i317.i, %sw.bb17.i318.i ], [ %pin.lobit.i308.i, %if.end.i309.i.cleanup.sink.split.i330.i_crit_edge ]
  %c_val.sink.i327.i = phi ptr [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 5), %if.else.i325.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5), %sw.bb.i312.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5), %sw.bb12.i315.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5), %sw.bb17.i318.i ], [ getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5), %if.end.i309.i.cleanup.sink.split.i330.i_crit_edge ]
  %134 = xor i8 %.sink350.i, -1
  %135 = ptrtoint ptr %.sink349.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %.sink349.i, align 1
  %136 = xor i32 %inv.0.ph.sink.i326.i, 1
  %arrayidx30.i329.i = getelementptr i8, ptr %c_val.sink.i327.i, i32 %136
  %137 = ptrtoint ptr %arrayidx30.i329.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %.sink350.i, ptr %arrayidx30.i329.i, align 1
  br label %lcd_init.exit.thread

lcd_init.exit.thread:                             ; preds = %cleanup.sink.split.i330.i, %if.end.i309.i.lcd_init.exit.thread_crit_edge, %pin_to_bits.exit305.i.lcd_init.exit.thread_crit_edge
  store ptr %call1.i, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 5), align 4
  store i8 1, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 1), align 1
  br label %lor.lhs.false

lcd_init.exit:                                    ; preds = %if.then3.i, %if.then24.lcd_init.exit_crit_edge
  %.pr = load ptr, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 5), align 4
  %tobool25.not = icmp eq ptr %.pr, null
  br i1 %tobool25.not, label %lcd_init.exit.err_unreg_device_crit_edge, label %lcd_init.exit.lor.lhs.false_crit_edge

lcd_init.exit.lor.lhs.false_crit_edge:            ; preds = %lcd_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

lcd_init.exit.err_unreg_device_crit_edge:         ; preds = %lcd_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unreg_device

lor.lhs.false:                                    ; preds = %lcd_init.exit.lor.lhs.false_crit_edge, %lcd_init.exit.thread
  %138 = phi ptr [ %call1.i, %lcd_init.exit.thread ], [ %.pr, %lcd_init.exit.lor.lhs.false_crit_edge ]
  %call26 = call i32 @charlcd_register(ptr noundef nonnull %138) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.err_unreg_device_crit_edge

lor.lhs.false.err_unreg_device_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unreg_device

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end30:                                         ; preds = %lor.lhs.false.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  %139 = load i8, ptr @keypad.0, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool31.not = icmp eq i8 %139, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.then32

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then32:                                        ; preds = %if.end30
  call void @__init_waitqueue_head(ptr noundef nonnull @keypad_read_wait, ptr noundef nonnull @.str.14, ptr noundef nonnull @keypad_init.__key) #11
  store i32 0, ptr @keypad_buflen, align 4
  %140 = load ptr, ptr @keypad_profile, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %140, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not20.i = icmp eq i8 %142, 0
  br i1 %tobool.not20.i, label %if.then32.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then32.for.end.i_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %sigtab.i.i.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %panel_bind_key.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %arrayidx22.i = phi ptr [ %140, %for.body.lr.ph.i ], [ %arrayidx.i, %panel_bind_key.exit.i.for.body.i_crit_edge ]
  %143 = phi ptr [ %140, %for.body.lr.ph.i ], [ %169, %panel_bind_key.exit.i.for.body.i_crit_edge ]
  %keynum.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %panel_bind_key.exit.i.for.body.i_crit_edge ]
  %arrayidx6.i = getelementptr [4 x [9 x i8]], ptr %143, i32 %keynum.021.i, i32 1
  %arrayidx9.i = getelementptr [4 x [9 x i8]], ptr %143, i32 %keynum.021.i, i32 2
  %arrayidx12.i = getelementptr [4 x [9 x i8]], ptr %143, i32 %keynum.021.i, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %144 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %144, i32 noundef 3520, i32 noundef 64) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.panel_bind_key.exit.i_crit_edge, label %if.end.i.i51

for.body.i.panel_bind_key.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %panel_bind_key.exit.i

if.end.i.i51:                                     ; preds = %for.body.i
  %mask.i.i = getelementptr inbounds %struct.logical_input, ptr %call7.i.i.i.i, i32 0, i32 1
  %value.i.i = getelementptr inbounds %struct.logical_input, ptr %call7.i.i.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %sigtab.i.i.i) #11
  %145 = call ptr @memcpy(ptr %sigtab.i.i.i, ptr @__const.input_name2mask.sigtab, i32 11)
  %146 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not13.i.i.i = icmp eq i8 %147, 0
  br i1 %tobool.not13.i.i.i, label %if.end.i.i51.if.end4.i.i_crit_edge, label %if.end.i.i51.while.body.i.i.i_crit_edge

if.end.i.i51.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i51
  br label %while.body.i.i.i

if.end.i.i51.if.end4.i.i_crit_edge:               ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i51.while.body.i.i.i_crit_edge
  %148 = phi i8 [ %156, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %147, %if.end.i.i51.while.body.i.i.i_crit_edge ]
  %v.018.i.i.i = phi i64 [ %spec.select.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.end.i.i51.while.body.i.i.i_crit_edge ]
  %m.017.i.i.i = phi i64 [ %or24.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.end.i.i51.while.body.i.i.i_crit_edge ]
  %om.016.i.i.i = phi i8 [ %om.1.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.end.i.i51.while.body.i.i.i_crit_edge ]
  %im.015.i.i.i = phi i8 [ %conv4.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.end.i.i51.while.body.i.i.i_crit_edge ]
  %name.addr.014.i.i.i = phi ptr [ %incdec.ptr31.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %arrayidx22.i, %if.end.i.i51.while.body.i.i.i_crit_edge ]
  %conv.i.i.i = zext i8 %148 to i32
  %call.i.i.i = call ptr @strchr(ptr noundef nonnull %sigtab.i.i.i, i32 noundef %conv.i.i.i) #11
  %tobool1.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool1.not.i.i.i, label %while.body.i.i.i.if.then3.i.i_crit_edge, label %if.end.i.i.i

while.body.i.i.i.if.then3.i.i_crit_edge:          ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %call.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %and.i.i.i = and i32 %sub.ptr.sub.i.i.i, 1
  %shr.i.i.i = ashr i32 %sub.ptr.sub.i.i.i, 1
  %shl.i.i.i = shl nuw i32 1, %shr.i.i.i
  %149 = trunc i32 %shl.i.i.i to i8
  %conv4.i.i.i = or i8 %im.015.i.i.i, %149
  %incdec.ptr.i.i.i = getelementptr i8, ptr %name.addr.014.i.i.i, i32 1
  %150 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %incdec.ptr.i.i.i, align 1
  %152 = and i8 %151, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %152)
  %153 = icmp eq i8 %152, 48
  br i1 %153, label %if.then10.i.i.i, label %if.else.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i.i.i = zext i8 %151 to i32
  %sub.i.i.i = add nsw i32 %conv5.i.i.i, -48
  %shl12.i.i.i = shl nuw nsw i32 1, %sub.i.i.i
  %154 = trunc i32 %shl12.i.i.i to i8
  %conv15.i.i.i = or i8 %om.016.i.i.i, %154
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %151)
  %cmp17.i.i.i = icmp eq i8 %151, 45
  br i1 %cmp17.i.i.i, label %if.else.i.i.i.cleanup.i.i.i_crit_edge, label %if.else.i.i.i.if.then3.i.i_crit_edge

if.else.i.i.i.if.then3.i.i_crit_edge:             ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i.i

if.else.i.i.i.cleanup.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.else.i.i.i.cleanup.i.i.i_crit_edge, %if.then10.i.i.i
  %om.1.i.i.i = phi i8 [ %conv15.i.i.i, %if.then10.i.i.i ], [ %om.016.i.i.i, %if.else.i.i.i.cleanup.i.i.i_crit_edge ]
  %out.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then10.i.i.i ], [ 8, %if.else.i.i.i.cleanup.i.i.i_crit_edge ]
  %mul.i.i.i = mul nuw nsw i32 %out.0.i.i.i, 5
  %add.i.i.i = add nsw i32 %mul.i.i.i, %shr.i.i.i
  %sh_prom.i.i.i = zext i32 %add.i.i.i to i64
  %shl23.i.i.i = shl nuw i64 1, %sh_prom.i.i.i
  %or24.i.i.i = or i64 %shl23.i.i.i, %m.017.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %or29.i.i.i = select i1 %tobool25.not.i.i.i, i64 %shl23.i.i.i, i64 0
  %spec.select.i.i.i = or i64 %or29.i.i.i, %v.018.i.i.i
  %incdec.ptr31.i.i.i = getelementptr i8, ptr %name.addr.014.i.i.i, i32 2
  %155 = ptrtoint ptr %incdec.ptr31.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %incdec.ptr31.i.i.i, align 1
  %tobool.not.i.i.i = icmp eq i8 %156, 0
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i.if.end4.i.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i

cleanup.i.i.i.if.end4.i.i_crit_edge:              ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i.i.if.then3.i.i_crit_edge, %while.body.i.i.i.if.then3.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %sigtab.i.i.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %panel_bind_key.exit.i

if.end4.i.i:                                      ; preds = %cleanup.i.i.i.if.end4.i.i_crit_edge, %if.end.i.i51.if.end4.i.i_crit_edge
  %im.0.lcssa.i.i.i = phi i8 [ 0, %if.end.i.i51.if.end4.i.i_crit_edge ], [ %conv4.i.i.i, %cleanup.i.i.i.if.end4.i.i_crit_edge ]
  %om.0.lcssa.i.i.i = phi i8 [ 0, %if.end.i.i51.if.end4.i.i_crit_edge ], [ %om.1.i.i.i, %cleanup.i.i.i.if.end4.i.i_crit_edge ]
  %m.0.lcssa.i.i.i = phi i64 [ 0, %if.end.i.i51.if.end4.i.i_crit_edge ], [ %or24.i.i.i, %cleanup.i.i.i.if.end4.i.i_crit_edge ]
  %v.0.lcssa.i.i.i = phi i64 [ 0, %if.end.i.i51.if.end4.i.i_crit_edge ], [ %spec.select.i.i.i, %cleanup.i.i.i.if.end4.i.i_crit_edge ]
  %157 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %m.0.lcssa.i.i.i, ptr %mask.i.i, align 8
  %158 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %v.0.lcssa.i.i.i, ptr %value.i.i, align 8
  %159 = load i8, ptr @scan_mask_i, align 1
  %or401.i.i.i = or i8 %159, %im.0.lcssa.i.i.i
  store i8 %or401.i.i.i, ptr @scan_mask_i, align 1
  %160 = load i8, ptr @scan_mask_o, align 1
  %or472.i.i.i = or i8 %160, %om.0.lcssa.i.i.i
  store i8 %or472.i.i.i, ptr @scan_mask_o, align 1
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %sigtab.i.i.i) #11
  %type.i.i = getelementptr inbounds %struct.logical_input, ptr %call7.i.i.i.i, i32 0, i32 3
  %161 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 1, ptr %type.i.i, align 8
  %state.i.i = getelementptr inbounds %struct.logical_input, ptr %call7.i.i.i.i, i32 0, i32 4
  %162 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %state.i.i, align 4
  %rise_time.i.i = getelementptr inbounds %struct.logical_input, ptr %call7.i.i.i.i, i32 0, i32 5
  %163 = ptrtoint ptr %rise_time.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %rise_time.i.i, align 8
  %fall_time.i.i = getelementptr inbounds %struct.logical_input, ptr %call7.i.i.i.i, i32 0, i32 6
  %164 = ptrtoint ptr %fall_time.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %fall_time.i.i, align 1
  %u.i.i = getelementptr inbounds %struct.logical_input, ptr %call7.i.i.i.i, i32 0, i32 10
  %call5.i.i = call ptr @strncpy(ptr noundef %u.i.i, ptr noundef %arrayidx6.i, i32 noundef 8) #11
  %repeat_str.i.i = getelementptr inbounds %struct.logical_input, ptr %call7.i.i.i.i, i32 0, i32 10, i32 0, i32 2
  %call8.i.i = call ptr @strncpy(ptr noundef %repeat_str.i.i, ptr noundef %arrayidx9.i, i32 noundef 8) #11
  %release_str.i.i = getelementptr inbounds %struct.logical_input, ptr %call7.i.i.i.i, i32 0, i32 10, i32 1
  %call11.i.i = call ptr @strncpy(ptr noundef %release_str.i.i, ptr noundef %arrayidx12.i, i32 noundef 8) #11
  %165 = load ptr, ptr @logical_inputs, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @logical_inputs, ptr noundef %165) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end4.i.i.panel_bind_key.exit.i_crit_edge

if.end4.i.i.panel_bind_key.exit.i_crit_edge:      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %panel_bind_key.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i.i, align 4
  %167 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %165, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %168 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @logical_inputs, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %call7.i.i.i.i, ptr @logical_inputs, align 4
  br label %panel_bind_key.exit.i

panel_bind_key.exit.i:                            ; preds = %if.end.i.i.i.i, %if.end4.i.i.panel_bind_key.exit.i_crit_edge, %if.then3.i.i, %for.body.i.panel_bind_key.exit.i_crit_edge
  %inc.i = add i32 %keynum.021.i, 1
  %169 = load ptr, ptr @keypad_profile, align 4
  %arrayidx.i = getelementptr [4 x [9 x i8]], ptr %169, i32 %inc.i
  %170 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx.i, align 1
  %tobool.not.i52 = icmp eq i8 %171, 0
  br i1 %tobool.not.i52, label %panel_bind_key.exit.i.for.end.i_crit_edge, label %panel_bind_key.exit.i.for.body.i_crit_edge

panel_bind_key.exit.i.for.body.i_crit_edge:       ; preds = %panel_bind_key.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

panel_bind_key.exit.i.for.end.i_crit_edge:        ; preds = %panel_bind_key.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %panel_bind_key.exit.i.for.end.i_crit_edge, %if.then32.for.end.i_crit_edge
  %172 = load ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @scan_timer, i32 0, i32 2), align 4
  %tobool.not.i19.i = icmp eq ptr %172, null
  br i1 %tobool.not.i19.i, label %do.body.i.i, label %for.end.i.keypad_init.exit_crit_edge

for.end.i.keypad_init.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %keypad_init.exit

do.body.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @init_timer_key(ptr noundef nonnull @scan_timer, ptr noundef nonnull @panel_scan_timer, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_scan_timer.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %173 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %173, 2
  store i32 %add.i.i, ptr getelementptr inbounds (%struct.timer_list, ptr @scan_timer, i32 0, i32 1), align 4
  call void @add_timer(ptr noundef nonnull @scan_timer) #11
  br label %keypad_init.exit

keypad_init.exit:                                 ; preds = %do.body.i.i, %for.end.i.keypad_init.exit_crit_edge
  store i1 true, ptr @keypad_initialized, align 4
  %call33 = call i32 @misc_register(ptr noundef nonnull @keypad_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %keypad_init.exit.cleanup_crit_edge, label %err_lcd_unreg

keypad_init.exit.cleanup_crit_edge:               ; preds = %keypad_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_lcd_unreg:                                    ; preds = %keypad_init.exit
  %174 = load ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @scan_timer, i32 0, i32 2), align 4
  %tobool38.not = icmp eq ptr %174, null
  br i1 %tobool38.not, label %err_lcd_unreg.if.end41_crit_edge, label %if.then39

err_lcd_unreg.if.end41_crit_edge:                 ; preds = %err_lcd_unreg
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %err_lcd_unreg
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = call i32 @del_timer_sync(ptr noundef nonnull @scan_timer) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %err_lcd_unreg.if.end41_crit_edge
  %175 = load i8, ptr @lcd, align 4, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool42.not = icmp eq i8 %175, 0
  br i1 %tobool42.not, label %if.end41.err_unreg_device_crit_edge, label %if.then43

if.end41.err_unreg_device_crit_edge:              ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unreg_device

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %176 = load ptr, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 5), align 4
  %call44 = call i32 @charlcd_unregister(ptr noundef %176) #11
  br label %err_unreg_device

err_unreg_device:                                 ; preds = %if.then43, %if.end41.err_unreg_device_crit_edge, %lor.lhs.false.err_unreg_device_crit_edge, %lcd_init.exit.err_unreg_device_crit_edge, %do.end19
  %177 = load ptr, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 5), align 4
  call void @kfree(ptr noundef %177) #11
  store ptr null, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 5), align 4
  %178 = load ptr, ptr @pprt, align 4
  call void @parport_unregister_device(ptr noundef %178) #11
  store ptr null, ptr @pprt, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_device, %keypad_init.exit.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %do.end9, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %panel_cb) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @charlcd_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keypad_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  %2 = load i32, ptr @keypad_buflen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then:                                          ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %3 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_flags, align 4
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup38_crit_edge

if.then.cleanup38_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end:                                           ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1035) #11
  %5 = load i32, ptr @keypad_buflen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.not = icmp eq i32 %5, 0
  br i1 %cmp6.not, label %if.then8, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call58 = call i32 @prepare_to_wait_event(ptr noundef nonnull @keypad_read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %7 = load i32, ptr @keypad_buflen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not59 = icmp eq i32 %7, 0
  br i1 %cmp10.not59, label %if.then8.if.end13_crit_edge, label %if.then8.if.end18.thread55_crit_edge

if.then8.if.end18.thread55_crit_edge:             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.thread55

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  br label %if.end13

if.end13:                                         ; preds = %cleanup.if.end13_crit_edge, %if.then8.if.end13_crit_edge
  %call60 = phi i32 [ %call, %cleanup.if.end13_crit_edge ], [ %call58, %if.then8.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool14.not = icmp eq i32 %call60, 0
  br i1 %tobool14.not, label %cleanup, label %if.end18

cleanup:                                          ; preds = %if.end13
  call void @schedule() #11
  %call = call i32 @prepare_to_wait_event(ptr noundef nonnull @keypad_read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %8 = load i32, ptr @keypad_buflen, align 4
  %cmp10.not = icmp eq i32 %8, 0
  br i1 %cmp10.not, label %cleanup.if.end13_crit_edge, label %cleanup.if.end18.thread55_crit_edge

cleanup.if.end18.thread55_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.thread55

cleanup.if.end13_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end18.thread55:                                ; preds = %cleanup.if.end18.thread55_crit_edge, %if.then8.if.end18.thread55_crit_edge
  call void @finish_wait(ptr noundef nonnull @keypad_read_wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end23

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup38

if.end23:                                         ; preds = %if.end18.thread55, %if.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp25.not62 = icmp eq i32 %count, 0
  br i1 %cmp25.not62, label %if.end23.for.end36_crit_edge, label %land.rhs.preheader

if.end23.for.end36_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end36

land.rhs.preheader:                               ; preds = %if.end23
  %9 = add i32 %conv, %count
  %.pr = load i32, ptr @keypad_buflen, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.preheader
  %10 = phi i32 [ %.pr, %land.rhs.preheader ], [ %dec35, %for.body.land.rhs_crit_edge ]
  %dec65.in = phi i32 [ %count, %land.rhs.preheader ], [ %dec65, %for.body.land.rhs_crit_edge ]
  %i.064 = phi i32 [ %conv, %land.rhs.preheader ], [ %inc, %for.body.land.rhs_crit_edge ]
  %tmp.063 = phi ptr [ %buf, %land.rhs.preheader ], [ %incdec.ptr, %for.body.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp27 = icmp sgt i32 %10, 0
  br i1 %cmp27, label %for.body, label %land.rhs.for.end36_crit_edge

land.rhs.for.end36_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end36

for.body:                                         ; preds = %land.rhs
  %dec65 = add i32 %dec65.in, -1
  %11 = load i32, ptr @keypad_start, align 4
  %arrayidx = getelementptr [64 x i8], ptr @keypad_buffer, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1041) #11
  %14 = call i32 @llvm.read_register.i32(metadata !266) #11
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !277
  %and.i = and i32 %16, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !278
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !279
  %17 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %tmp.063, i8 %13, i32 -1226833921) #11, !srcloc !280
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #11, !srcloc !278
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !279
  %18 = load i32, ptr @keypad_start, align 4
  %add = add i32 %18, 1
  %rem = srem i32 %add, 64
  store i32 %rem, ptr @keypad_start, align 4
  %inc = add i32 %i.064, 1
  %incdec.ptr = getelementptr i8, ptr %tmp.063, i32 1
  %19 = load i32, ptr @keypad_buflen, align 4
  %dec35 = add i32 %19, -1
  store i32 %dec35, ptr @keypad_buflen, align 4
  %cmp25.not = icmp eq i32 %dec65, 0
  br i1 %cmp25.not, label %for.body.for.end36_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.body.for.end36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end36

for.end36:                                        ; preds = %for.body.for.end36_crit_edge, %land.rhs.for.end36_crit_edge, %if.end23.for.end36_crit_edge
  %tmp.0.lcssa = phi ptr [ %buf, %if.end23.for.end36_crit_edge ], [ %incdec.ptr, %for.body.for.end36_crit_edge ], [ %tmp.063, %land.rhs.for.end36_crit_edge ]
  %i.0.lcssa = phi i32 [ %conv, %if.end23.for.end36_crit_edge ], [ %9, %for.body.for.end36_crit_edge ], [ %i.064, %land.rhs.for.end36_crit_edge ]
  %conv37 = zext i32 %i.0.lcssa to i64
  %20 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv37, ptr %ppos, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %tmp.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup38

cleanup38:                                        ; preds = %for.end36, %if.end18, %if.then.cleanup38_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %for.end36 ], [ -11, %if.then.cleanup38_crit_edge ], [ -4, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keypad_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @keypad_available, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !281
  tail call void @llvm.prefetch.p0(ptr nonnull @keypad_available, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @keypad_available, ptr nonnull @keypad_available, i32 1, ptr nonnull elementtype(i32) @keypad_available) #11, !srcloc !282
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !283
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %1 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_mode, align 8
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @keypad_buflen, align 4
  br label %cleanup

fail:                                             ; preds = %if.end.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ -1, %if.end.fail_crit_edge ], [ -16, %entry.fail_crit_edge ]
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @keypad_available, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @keypad_available, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @keypad_available, ptr nonnull @keypad_available, i32 1, ptr nonnull elementtype(i32) @keypad_available) #11, !srcloc !284
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end2
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keypad_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @keypad_available, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @keypad_available, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @keypad_available, ptr nonnull @keypad_available, i32 1, ptr nonnull elementtype(i32) @keypad_available) #11, !srcloc !284
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @charlcd_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hd44780_common_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @charlcd_alloc() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lcd_write_data_s(ptr nocapture noundef readnone %hdc, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pprt_lock) #11
  tail call fastcc void @lcd_send_serial(i32 noundef 95)
  %and = and i32 %data, 15
  tail call fastcc void @lcd_send_serial(i32 noundef %and)
  %0 = lshr i32 %data, 4
  %and1 = and i32 %0, 15
  tail call fastcc void @lcd_send_serial(i32 noundef %and1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 8589920) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pprt_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lcd_write_cmd_s(ptr nocapture noundef readnone %hdc, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pprt_lock) #11
  tail call fastcc void @lcd_send_serial(i32 noundef 31)
  %and = and i32 %cmd, 15
  tail call fastcc void @lcd_send_serial(i32 noundef %and)
  %0 = lshr i32 %cmd, 4
  %and1 = and i32 %0, 15
  tail call fastcc void @lcd_send_serial(i32 noundef %and1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 8589920) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pprt_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lcd_write_data_p8(ptr nocapture noundef readnone %hdc, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pprt_lock) #11
  %0 = load ptr, ptr @pprt, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %conv = trunc i32 %data to i8
  tail call void %6(ptr noundef %2, i8 noundef zeroext %conv) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 4294960) #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @bits) #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull @bits) #11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef nonnull @bits) #11
  %8 = load ptr, ptr @pprt, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %10, i32 0, i32 24
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %read_control.i = getelementptr inbounds %struct.parport_operations, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %read_control.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_control.i, align 4
  %call.i = tail call zeroext i8 %14(ptr noundef %10) #11
  %15 = load volatile i32, ptr @bits, align 4
  %16 = and i32 %15, 1
  %17 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 2), align 1
  %and.i2.i = and i8 %17, %call.i
  %arrayidx5.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 %16
  %18 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx5.i.i, align 1
  %or.i3.i = or i8 %and.i2.i, %19
  %20 = load volatile i32, ptr @bits, align 4
  %21 = lshr i32 %20, 1
  %22 = and i32 %21, 1
  %23 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 2), align 1
  %and.1.i4.i = and i8 %23, %or.i3.i
  %arrayidx5.1.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 %22
  %24 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5.1.i.i, align 1
  %or.1.i5.i = or i8 %and.1.i4.i, %25
  %26 = load volatile i32, ptr @bits, align 4
  %27 = lshr i32 %26, 2
  %28 = and i32 %27, 1
  %29 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 2), align 1
  %and.2.i6.i = and i8 %29, %or.1.i5.i
  %arrayidx5.2.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 %28
  %30 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx5.2.i.i, align 1
  %or.2.i7.i = or i8 %and.2.i6.i, %31
  %32 = load volatile i32, ptr @bits, align 4
  %33 = lshr i32 %32, 3
  %34 = and i32 %33, 1
  %35 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 2), align 1
  %and.3.i8.i = and i8 %35, %or.2.i7.i
  %arrayidx5.3.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 %34
  %36 = ptrtoint ptr %arrayidx5.3.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx5.3.i.i, align 1
  %or.3.i9.i = or i8 %and.3.i8.i, %37
  %38 = load volatile i32, ptr @bits, align 4
  %39 = lshr i32 %38, 4
  %40 = and i32 %39, 1
  %41 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 2), align 1
  %and.4.i10.i = and i8 %41, %or.3.i9.i
  %arrayidx5.4.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 %40
  %42 = ptrtoint ptr %arrayidx5.4.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx5.4.i.i, align 1
  %or.4.i11.i = or i8 %and.4.i10.i, %43
  %44 = load volatile i32, ptr @bits, align 4
  %45 = lshr i32 %44, 5
  %46 = and i32 %45, 1
  %47 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 2), align 1
  %and.5.i12.i = and i8 %47, %or.4.i11.i
  %arrayidx5.5.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 %46
  %48 = ptrtoint ptr %arrayidx5.5.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx5.5.i.i, align 1
  %or.5.i13.i = or i8 %and.5.i12.i, %49
  %50 = load ptr, ptr @pprt, align 4
  %port2.i = getelementptr inbounds %struct.pardevice, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port2.i, align 4
  %ops3.i = getelementptr inbounds %struct.parport, ptr %52, i32 0, i32 24
  %53 = ptrtoint ptr %ops3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops3.i, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_control.i, align 4
  tail call void %56(ptr noundef %52, i8 noundef zeroext %or.5.i13.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 8589920) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @bits) #11
  %58 = load ptr, ptr @pprt, align 4
  %port.i3 = getelementptr inbounds %struct.pardevice, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %port.i3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port.i3, align 4
  %ops.i4 = getelementptr inbounds %struct.parport, ptr %60, i32 0, i32 24
  %61 = ptrtoint ptr %ops.i4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i4, align 4
  %read_control.i5 = getelementptr inbounds %struct.parport_operations, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %read_control.i5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read_control.i5, align 4
  %call.i6 = tail call zeroext i8 %64(ptr noundef %60) #11
  %65 = load volatile i32, ptr @bits, align 4
  %66 = and i32 %65, 1
  %67 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 2), align 1
  %and.i2.i7 = and i8 %67, %call.i6
  %arrayidx5.i.i8 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 %66
  %68 = ptrtoint ptr %arrayidx5.i.i8 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx5.i.i8, align 1
  %or.i3.i9 = or i8 %and.i2.i7, %69
  %70 = load volatile i32, ptr @bits, align 4
  %71 = lshr i32 %70, 1
  %72 = and i32 %71, 1
  %73 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 2), align 1
  %and.1.i4.i10 = and i8 %73, %or.i3.i9
  %arrayidx5.1.i.i11 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 %72
  %74 = ptrtoint ptr %arrayidx5.1.i.i11 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx5.1.i.i11, align 1
  %or.1.i5.i12 = or i8 %and.1.i4.i10, %75
  %76 = load volatile i32, ptr @bits, align 4
  %77 = lshr i32 %76, 2
  %78 = and i32 %77, 1
  %79 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 2), align 1
  %and.2.i6.i13 = and i8 %79, %or.1.i5.i12
  %arrayidx5.2.i.i14 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 %78
  %80 = ptrtoint ptr %arrayidx5.2.i.i14 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx5.2.i.i14, align 1
  %or.2.i7.i15 = or i8 %and.2.i6.i13, %81
  %82 = load volatile i32, ptr @bits, align 4
  %83 = lshr i32 %82, 3
  %84 = and i32 %83, 1
  %85 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 2), align 1
  %and.3.i8.i16 = and i8 %85, %or.2.i7.i15
  %arrayidx5.3.i.i17 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 %84
  %86 = ptrtoint ptr %arrayidx5.3.i.i17 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx5.3.i.i17, align 1
  %or.3.i9.i18 = or i8 %and.3.i8.i16, %87
  %88 = load volatile i32, ptr @bits, align 4
  %89 = lshr i32 %88, 4
  %90 = and i32 %89, 1
  %91 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 2), align 1
  %and.4.i10.i19 = and i8 %91, %or.3.i9.i18
  %arrayidx5.4.i.i20 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 %90
  %92 = ptrtoint ptr %arrayidx5.4.i.i20 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx5.4.i.i20, align 1
  %or.4.i11.i21 = or i8 %and.4.i10.i19, %93
  %94 = load volatile i32, ptr @bits, align 4
  %95 = lshr i32 %94, 5
  %96 = and i32 %95, 1
  %97 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 2), align 1
  %and.5.i12.i22 = and i8 %97, %or.4.i11.i21
  %arrayidx5.5.i.i23 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 %96
  %98 = ptrtoint ptr %arrayidx5.5.i.i23 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx5.5.i.i23, align 1
  %or.5.i13.i24 = or i8 %and.5.i12.i22, %99
  %100 = load ptr, ptr @pprt, align 4
  %port2.i25 = getelementptr inbounds %struct.pardevice, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %port2.i25 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %port2.i25, align 4
  %ops3.i26 = getelementptr inbounds %struct.parport, ptr %102, i32 0, i32 24
  %103 = ptrtoint ptr %ops3.i26 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops3.i26, align 4
  %write_control.i27 = getelementptr inbounds %struct.parport_operations, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %write_control.i27 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write_control.i27, align 4
  tail call void %106(ptr noundef %102, i8 noundef zeroext %or.5.i13.i24) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 9663660) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pprt_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lcd_write_cmd_p8(ptr nocapture noundef readnone %hdc, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pprt_lock) #11
  %0 = load ptr, ptr @pprt, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %conv = trunc i32 %cmd to i8
  tail call void %6(ptr noundef %2, i8 noundef zeroext %conv) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 4294960) #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @bits) #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull @bits) #11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef nonnull @bits) #11
  %8 = load ptr, ptr @pprt, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %10, i32 0, i32 24
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %read_control.i = getelementptr inbounds %struct.parport_operations, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %read_control.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_control.i, align 4
  %call.i = tail call zeroext i8 %14(ptr noundef %10) #11
  %15 = load volatile i32, ptr @bits, align 4
  %16 = and i32 %15, 1
  %17 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 2), align 1
  %and.i2.i = and i8 %17, %call.i
  %arrayidx5.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 %16
  %18 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx5.i.i, align 1
  %or.i3.i = or i8 %and.i2.i, %19
  %20 = load volatile i32, ptr @bits, align 4
  %21 = lshr i32 %20, 1
  %22 = and i32 %21, 1
  %23 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 2), align 1
  %and.1.i4.i = and i8 %23, %or.i3.i
  %arrayidx5.1.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 %22
  %24 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5.1.i.i, align 1
  %or.1.i5.i = or i8 %and.1.i4.i, %25
  %26 = load volatile i32, ptr @bits, align 4
  %27 = lshr i32 %26, 2
  %28 = and i32 %27, 1
  %29 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 2), align 1
  %and.2.i6.i = and i8 %29, %or.1.i5.i
  %arrayidx5.2.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 %28
  %30 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx5.2.i.i, align 1
  %or.2.i7.i = or i8 %and.2.i6.i, %31
  %32 = load volatile i32, ptr @bits, align 4
  %33 = lshr i32 %32, 3
  %34 = and i32 %33, 1
  %35 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 2), align 1
  %and.3.i8.i = and i8 %35, %or.2.i7.i
  %arrayidx5.3.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 %34
  %36 = ptrtoint ptr %arrayidx5.3.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx5.3.i.i, align 1
  %or.3.i9.i = or i8 %and.3.i8.i, %37
  %38 = load volatile i32, ptr @bits, align 4
  %39 = lshr i32 %38, 4
  %40 = and i32 %39, 1
  %41 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 2), align 1
  %and.4.i10.i = and i8 %41, %or.3.i9.i
  %arrayidx5.4.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 %40
  %42 = ptrtoint ptr %arrayidx5.4.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx5.4.i.i, align 1
  %or.4.i11.i = or i8 %and.4.i10.i, %43
  %44 = load volatile i32, ptr @bits, align 4
  %45 = lshr i32 %44, 5
  %46 = and i32 %45, 1
  %47 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 2), align 1
  %and.5.i12.i = and i8 %47, %or.4.i11.i
  %arrayidx5.5.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 %46
  %48 = ptrtoint ptr %arrayidx5.5.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx5.5.i.i, align 1
  %or.5.i13.i = or i8 %and.5.i12.i, %49
  %50 = load ptr, ptr @pprt, align 4
  %port2.i = getelementptr inbounds %struct.pardevice, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port2.i, align 4
  %ops3.i = getelementptr inbounds %struct.parport, ptr %52, i32 0, i32 24
  %53 = ptrtoint ptr %ops3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops3.i, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_control.i, align 4
  tail call void %56(ptr noundef %52, i8 noundef zeroext %or.5.i13.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 8589920) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @bits) #11
  %58 = load ptr, ptr @pprt, align 4
  %port.i3 = getelementptr inbounds %struct.pardevice, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %port.i3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port.i3, align 4
  %ops.i4 = getelementptr inbounds %struct.parport, ptr %60, i32 0, i32 24
  %61 = ptrtoint ptr %ops.i4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i4, align 4
  %read_control.i5 = getelementptr inbounds %struct.parport_operations, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %read_control.i5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read_control.i5, align 4
  %call.i6 = tail call zeroext i8 %64(ptr noundef %60) #11
  %65 = load volatile i32, ptr @bits, align 4
  %66 = and i32 %65, 1
  %67 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 2), align 1
  %and.i2.i7 = and i8 %67, %call.i6
  %arrayidx5.i.i8 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 %66
  %68 = ptrtoint ptr %arrayidx5.i.i8 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx5.i.i8, align 1
  %or.i3.i9 = or i8 %and.i2.i7, %69
  %70 = load volatile i32, ptr @bits, align 4
  %71 = lshr i32 %70, 1
  %72 = and i32 %71, 1
  %73 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 2), align 1
  %and.1.i4.i10 = and i8 %73, %or.i3.i9
  %arrayidx5.1.i.i11 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 %72
  %74 = ptrtoint ptr %arrayidx5.1.i.i11 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx5.1.i.i11, align 1
  %or.1.i5.i12 = or i8 %and.1.i4.i10, %75
  %76 = load volatile i32, ptr @bits, align 4
  %77 = lshr i32 %76, 2
  %78 = and i32 %77, 1
  %79 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 2), align 1
  %and.2.i6.i13 = and i8 %79, %or.1.i5.i12
  %arrayidx5.2.i.i14 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 %78
  %80 = ptrtoint ptr %arrayidx5.2.i.i14 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx5.2.i.i14, align 1
  %or.2.i7.i15 = or i8 %and.2.i6.i13, %81
  %82 = load volatile i32, ptr @bits, align 4
  %83 = lshr i32 %82, 3
  %84 = and i32 %83, 1
  %85 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 2), align 1
  %and.3.i8.i16 = and i8 %85, %or.2.i7.i15
  %arrayidx5.3.i.i17 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 %84
  %86 = ptrtoint ptr %arrayidx5.3.i.i17 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx5.3.i.i17, align 1
  %or.3.i9.i18 = or i8 %and.3.i8.i16, %87
  %88 = load volatile i32, ptr @bits, align 4
  %89 = lshr i32 %88, 4
  %90 = and i32 %89, 1
  %91 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 2), align 1
  %and.4.i10.i19 = and i8 %91, %or.3.i9.i18
  %arrayidx5.4.i.i20 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 %90
  %92 = ptrtoint ptr %arrayidx5.4.i.i20 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx5.4.i.i20, align 1
  %or.4.i11.i21 = or i8 %and.4.i10.i19, %93
  %94 = load volatile i32, ptr @bits, align 4
  %95 = lshr i32 %94, 5
  %96 = and i32 %95, 1
  %97 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 2), align 1
  %and.5.i12.i22 = and i8 %97, %or.4.i11.i21
  %arrayidx5.5.i.i23 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 %96
  %98 = ptrtoint ptr %arrayidx5.5.i.i23 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx5.5.i.i23, align 1
  %or.5.i13.i24 = or i8 %and.5.i12.i22, %99
  %100 = load ptr, ptr @pprt, align 4
  %port2.i25 = getelementptr inbounds %struct.pardevice, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %port2.i25 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %port2.i25, align 4
  %ops3.i26 = getelementptr inbounds %struct.parport, ptr %102, i32 0, i32 24
  %103 = ptrtoint ptr %ops3.i26 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops3.i26, align 4
  %write_control.i27 = getelementptr inbounds %struct.parport_operations, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %write_control.i27 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write_control.i27, align 4
  tail call void %106(ptr noundef %102, i8 noundef zeroext %or.5.i13.i24) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 25769760) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pprt_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lcd_write_data_tilcd(ptr nocapture noundef readnone %hdc, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pprt_lock) #11
  %0 = load ptr, ptr @pprt, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %conv = trunc i32 %data to i8
  tail call void %6(ptr noundef %2, i8 noundef zeroext %conv) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 12884880) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pprt_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lcd_write_cmd_tilcd(ptr nocapture noundef readnone %hdc, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pprt_lock) #11
  %0 = load ptr, ptr @pprt, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_control, align 4
  %conv = trunc i32 %cmd to i8
  tail call void %6(ptr noundef %2, i8 noundef zeroext %conv) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 12884880) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pprt_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lcd_backlight(ptr nocapture noundef readnone %charlcd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 4, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pprt_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 3, ptr noundef nonnull @bits) #11
  br label %if.end2

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef nonnull @bits) #11
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  tail call fastcc void @panel_set_bits()
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pprt_lock) #11
  br label %return

return:                                           ; preds = %if.end2, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_print(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_gotoxy(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_home(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_clear_display(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_init_display(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_shift_cursor(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_shift_display(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_display(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_cursor(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_blink(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_fontsize(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_lines(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_redefine_char(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @panel_set_bits() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pprt, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %read_data.i = getelementptr inbounds %struct.parport_operations, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %read_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_data.i, align 4
  %call.i = tail call zeroext i8 %6(ptr noundef %2) #11
  %7 = load volatile i32, ptr @bits, align 4
  %8 = and i32 %7, 1
  %9 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 0, i32 2), align 1
  %and.i2.i = and i8 %9, %call.i
  %arrayidx5.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 0, i32 %8
  %10 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5.i.i, align 1
  %or.i3.i = or i8 %and.i2.i, %11
  %12 = load volatile i32, ptr @bits, align 4
  %13 = lshr i32 %12, 1
  %14 = and i32 %13, 1
  %15 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 1, i32 2), align 1
  %and.1.i4.i = and i8 %15, %or.i3.i
  %arrayidx5.1.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 1, i32 %14
  %16 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx5.1.i.i, align 1
  %or.1.i5.i = or i8 %and.1.i4.i, %17
  %18 = load volatile i32, ptr @bits, align 4
  %19 = lshr i32 %18, 2
  %20 = and i32 %19, 1
  %21 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 2, i32 2), align 1
  %and.2.i6.i = and i8 %21, %or.1.i5.i
  %arrayidx5.2.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 2, i32 %20
  %22 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx5.2.i.i, align 1
  %or.2.i7.i = or i8 %and.2.i6.i, %23
  %24 = load volatile i32, ptr @bits, align 4
  %25 = lshr i32 %24, 3
  %26 = and i32 %25, 1
  %27 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 3, i32 2), align 1
  %and.3.i8.i = and i8 %27, %or.2.i7.i
  %arrayidx5.3.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 3, i32 %26
  %28 = ptrtoint ptr %arrayidx5.3.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx5.3.i.i, align 1
  %or.3.i9.i = or i8 %and.3.i8.i, %29
  %30 = load volatile i32, ptr @bits, align 4
  %31 = lshr i32 %30, 4
  %32 = and i32 %31, 1
  %33 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 4, i32 2), align 1
  %and.4.i10.i = and i8 %33, %or.3.i9.i
  %arrayidx5.4.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 4, i32 %32
  %34 = ptrtoint ptr %arrayidx5.4.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx5.4.i.i, align 1
  %or.4.i11.i = or i8 %and.4.i10.i, %35
  %36 = load volatile i32, ptr @bits, align 4
  %37 = lshr i32 %36, 5
  %38 = and i32 %37, 1
  %39 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 5, i32 2), align 1
  %and.5.i12.i = and i8 %39, %or.4.i11.i
  %arrayidx5.5.i.i = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 1, i32 5, i32 %38
  %40 = ptrtoint ptr %arrayidx5.5.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx5.5.i.i, align 1
  %or.5.i13.i = or i8 %and.5.i12.i, %41
  %42 = load ptr, ptr @pprt, align 4
  %port2.i = getelementptr inbounds %struct.pardevice, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %port2.i, align 4
  %ops3.i = getelementptr inbounds %struct.parport, ptr %44, i32 0, i32 24
  %45 = ptrtoint ptr %ops3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops3.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  tail call void %48(ptr noundef %44, i8 noundef zeroext %or.5.i13.i) #11
  %49 = load ptr, ptr @pprt, align 4
  %port.i2 = getelementptr inbounds %struct.pardevice, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %port.i2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port.i2, align 4
  %ops.i3 = getelementptr inbounds %struct.parport, ptr %51, i32 0, i32 24
  %52 = ptrtoint ptr %ops.i3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i3, align 4
  %read_control.i = getelementptr inbounds %struct.parport_operations, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %read_control.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_control.i, align 4
  %call.i4 = tail call zeroext i8 %55(ptr noundef %51) #11
  %56 = load volatile i32, ptr @bits, align 4
  %57 = and i32 %56, 1
  %58 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 2), align 1
  %and.i2.i5 = and i8 %58, %call.i4
  %arrayidx5.i.i6 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 0, i32 %57
  %59 = ptrtoint ptr %arrayidx5.i.i6 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx5.i.i6, align 1
  %or.i3.i7 = or i8 %and.i2.i5, %60
  %61 = load volatile i32, ptr @bits, align 4
  %62 = lshr i32 %61, 1
  %63 = and i32 %62, 1
  %64 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 2), align 1
  %and.1.i4.i8 = and i8 %64, %or.i3.i7
  %arrayidx5.1.i.i9 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 1, i32 %63
  %65 = ptrtoint ptr %arrayidx5.1.i.i9 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx5.1.i.i9, align 1
  %or.1.i5.i10 = or i8 %and.1.i4.i8, %66
  %67 = load volatile i32, ptr @bits, align 4
  %68 = lshr i32 %67, 2
  %69 = and i32 %68, 1
  %70 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 2), align 1
  %and.2.i6.i11 = and i8 %70, %or.1.i5.i10
  %arrayidx5.2.i.i12 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 2, i32 %69
  %71 = ptrtoint ptr %arrayidx5.2.i.i12 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx5.2.i.i12, align 1
  %or.2.i7.i13 = or i8 %and.2.i6.i11, %72
  %73 = load volatile i32, ptr @bits, align 4
  %74 = lshr i32 %73, 3
  %75 = and i32 %74, 1
  %76 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 2), align 1
  %and.3.i8.i14 = and i8 %76, %or.2.i7.i13
  %arrayidx5.3.i.i15 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 3, i32 %75
  %77 = ptrtoint ptr %arrayidx5.3.i.i15 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx5.3.i.i15, align 1
  %or.3.i9.i16 = or i8 %and.3.i8.i14, %78
  %79 = load volatile i32, ptr @bits, align 4
  %80 = lshr i32 %79, 4
  %81 = and i32 %80, 1
  %82 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 2), align 1
  %and.4.i10.i17 = and i8 %82, %or.3.i9.i16
  %arrayidx5.4.i.i18 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 4, i32 %81
  %83 = ptrtoint ptr %arrayidx5.4.i.i18 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx5.4.i.i18, align 1
  %or.4.i11.i19 = or i8 %and.4.i10.i17, %84
  %85 = load volatile i32, ptr @bits, align 4
  %86 = lshr i32 %85, 5
  %87 = and i32 %86, 1
  %88 = load i8, ptr getelementptr inbounds ([2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 2), align 1
  %and.5.i12.i20 = and i8 %88, %or.4.i11.i19
  %arrayidx5.5.i.i21 = getelementptr [2 x [6 x [3 x i8]]], ptr @lcd_bits, i32 0, i32 0, i32 5, i32 %87
  %89 = ptrtoint ptr %arrayidx5.5.i.i21 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx5.5.i.i21, align 1
  %or.5.i13.i22 = or i8 %and.5.i12.i20, %90
  %91 = load ptr, ptr @pprt, align 4
  %port2.i23 = getelementptr inbounds %struct.pardevice, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %port2.i23 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %port2.i23, align 4
  %ops3.i24 = getelementptr inbounds %struct.parport, ptr %93, i32 0, i32 24
  %94 = ptrtoint ptr %ops3.i24 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops3.i24, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write_control.i, align 4
  tail call void %97(ptr noundef %93, i8 noundef zeroext %or.5.i13.i22) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lcd_send_serial(i32 noundef %byte) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %bit.04 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %byte.addr.03 = phi i32 [ %byte, %entry ], [ %shr, %if.end.for.body_crit_edge ]
  tail call void @_clear_bit(i32 noundef 4, ptr noundef nonnull @bits) #11
  tail call fastcc void @panel_set_bits()
  %and = and i32 %byte.addr.03, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 5, ptr noundef nonnull @bits) #11
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 5, ptr noundef nonnull @bits) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @panel_set_bits()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 429496) #11
  tail call void @_set_bit(i32 noundef 4, ptr noundef nonnull @bits) #11
  tail call fastcc void @panel_set_bits()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748) #11
  %shr = ashr i32 %byte.addr.03, 1
  %inc = add nuw nsw i32 %bit.04, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_scan_timer(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @keypad.0, align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %.b = load i1, ptr @keypad_initialized, align 4
  br i1 %.b, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !285
  %and.i.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #11, !srcloc !286
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %call2.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @pprt_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %spin_trylock_irq.exit.thread, label %if.then3

spin_trylock_irq.exit.thread:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !287
  br label %if.end

if.then3:                                         ; preds = %if.end.i
  %2 = load i64, ptr @phys_curr, align 8
  store i64 %2, ptr @phys_prev, align 8
  %3 = load i64, ptr @phys_read, align 8
  store i64 %3, ptr @phys_read_prev, align 8
  store i64 0, ptr @phys_read, align 8
  %4 = load ptr, ptr @pprt, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %read_data.i = getelementptr inbounds %struct.parport_operations, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %read_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_data.i, align 4
  %call.i = tail call zeroext i8 %10(ptr noundef %6) #11
  %11 = load i8, ptr @scan_mask_o, align 1
  %or88.i = or i8 %11, %call.i
  %12 = load ptr, ptr @pprt, align 4
  %port4.i = getelementptr inbounds %struct.pardevice, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %port4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port4.i, align 4
  %ops5.i = getelementptr inbounds %struct.parport, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %ops5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops5.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %neg.i = xor i8 %11, -1
  %and.i = and i8 %call.i, %neg.i
  tail call void %18(ptr noundef %14, i8 noundef zeroext %and.i) #11
  %19 = load ptr, ptr @pprt, align 4
  %port10.i = getelementptr inbounds %struct.pardevice, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %port10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port10.i, align 4
  %ops11.i = getelementptr inbounds %struct.parport, ptr %21, i32 0, i32 24
  %22 = ptrtoint ptr %ops11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops11.i, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_status.i, align 4
  %call13.i = tail call zeroext i8 %25(ptr noundef %21) #11
  %26 = lshr i8 %call13.i, 3
  %27 = xor i8 %26, 15
  %28 = load i8, ptr @scan_mask_i, align 1
  %and1689.i = and i8 %27, %28
  %29 = load ptr, ptr @pprt, align 4
  %port18.i = getelementptr inbounds %struct.pardevice, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %port18.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port18.i, align 4
  %ops19.i = getelementptr inbounds %struct.parport, ptr %31, i32 0, i32 24
  %32 = ptrtoint ptr %ops19.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops19.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void %35(ptr noundef %31, i8 noundef zeroext %or88.i) #11
  %36 = load ptr, ptr @pprt, align 4
  %port22.i = getelementptr inbounds %struct.pardevice, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %port22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port22.i, align 4
  %ops23.i = getelementptr inbounds %struct.parport, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %ops23.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops23.i, align 4
  %read_status24.i = getelementptr inbounds %struct.parport_operations, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %read_status24.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_status24.i, align 4
  %call26.i = tail call zeroext i8 %42(ptr noundef %38) #11
  %43 = lshr i8 %call26.i, 3
  %44 = xor i8 %43, 15
  %45 = load i8, ptr @scan_mask_i, align 1
  %and3190.i = and i8 %44, %45
  %conv33.i = zext i8 %and3190.i to i64
  %shl.i = shl nuw nsw i64 %conv33.i, 40
  %46 = load i64, ptr @phys_read, align 8
  %or34.i = or i64 %shl.i, %46
  store i64 %or34.i, ptr @phys_read, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %and1689.i, i8 %and3190.i)
  %cmp.not.i = icmp eq i8 %and1689.i, %and3190.i
  br i1 %cmp.not.i, label %if.then3.phys_scan_contacts.exit_crit_edge, label %for.cond.preheader.i

if.then3.phys_scan_contacts.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %phys_scan_contacts.exit

for.cond.preheader.i:                             ; preds = %if.then3
  %neg61.i = xor i8 %and3190.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %bit.091.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl40.i = shl nuw nsw i32 1, %bit.091.i
  %47 = load i8, ptr @scan_mask_o, align 1
  %conv41.i = zext i8 %47 to i32
  %and42.i = and i32 %shl40.i, %conv41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool.not.i20 = icmp eq i32 %and42.i, 0
  br i1 %tobool.not.i20, label %for.body.i.for.inc.i_crit_edge, label %if.end.i21

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i21:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = load ptr, ptr @pprt, align 4
  %port44.i = getelementptr inbounds %struct.pardevice, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %port44.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port44.i, align 4
  %ops45.i = getelementptr inbounds %struct.parport, ptr %50, i32 0, i32 24
  %51 = ptrtoint ptr %ops45.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops45.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = trunc i32 %shl40.i to i8
  %56 = xor i8 %55, -1
  %conv51.i = and i8 %or88.i, %56
  tail call void %54(ptr noundef %50, i8 noundef zeroext %conv51.i) #11
  %57 = load ptr, ptr @pprt, align 4
  %port52.i = getelementptr inbounds %struct.pardevice, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %port52.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port52.i, align 4
  %ops53.i = getelementptr inbounds %struct.parport, ptr %59, i32 0, i32 24
  %60 = ptrtoint ptr %ops53.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops53.i, align 4
  %read_status54.i = getelementptr inbounds %struct.parport_operations, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %read_status54.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_status54.i, align 4
  %call56.i = tail call zeroext i8 %63(ptr noundef %59) #11
  %64 = lshr i8 %call56.i, 3
  %65 = xor i8 %64, 15
  %and62.i = and i8 %65, %neg61.i
  %conv64.i = zext i8 %and62.i to i64
  %mul.i = mul nuw nsw i32 %bit.091.i, 5
  %sh_prom.i = zext i32 %mul.i to i64
  %shl65.i = shl i64 %conv64.i, %sh_prom.i
  %66 = load i64, ptr @phys_read, align 8
  %or66.i = or i64 %shl65.i, %66
  store i64 %or66.i, ptr @phys_read, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i21, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %bit.091.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = load ptr, ptr @pprt, align 4
  %port67.i = getelementptr inbounds %struct.pardevice, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %port67.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %port67.i, align 4
  %ops68.i = getelementptr inbounds %struct.parport, ptr %69, i32 0, i32 24
  %70 = ptrtoint ptr %ops68.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops68.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  tail call void %73(ptr noundef %69, i8 noundef zeroext %or88.i) #11
  br label %phys_scan_contacts.exit

phys_scan_contacts.exit:                          ; preds = %for.end.i, %if.then3.phys_scan_contacts.exit_crit_edge
  %74 = load i64, ptr @phys_prev, align 8
  %75 = load i64, ptr @phys_read, align 8
  %76 = load i64, ptr @phys_read_prev, align 8
  %xor72.i = xor i64 %76, %75
  %and73.i = and i64 %xor72.i, %74
  %and76.i = and i64 %76, %75
  %or77.i = or i64 %and73.i, %and76.i
  store i64 %or77.i, ptr @phys_curr, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pprt_lock) #11
  br label %if.end

if.end:                                           ; preds = %phys_scan_contacts.exit, %spin_trylock_irq.exit.thread
  %.b18 = load i1, ptr @inputs_stable, align 1
  br i1 %.b18, label %lor.lhs.false, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %77 = load i64, ptr @phys_curr, align 8
  %78 = load i64, ptr @phys_prev, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %77, i64 %78)
  %cmp.not = icmp eq i64 %77, %78
  br i1 %cmp.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  store i1 false, ptr @keypressed, align 1
  store i1 true, ptr @inputs_stable, align 1
  %input.067.i = load ptr, ptr @logical_inputs, align 4
  %cmp.not68.i = icmp eq ptr %input.067.i, @logical_inputs
  br i1 %cmp.not68.i, label %if.then5.if.end16_crit_edge, label %if.then5.for.body.i22_crit_edge

if.then5.for.body.i22_crit_edge:                  ; preds = %if.then5
  br label %for.body.i22

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

for.body.i22:                                     ; preds = %for.inc.i27.for.body.i22_crit_edge, %if.then5.for.body.i22_crit_edge
  %input.069.i = phi ptr [ %input.0.i, %for.inc.i27.for.body.i22_crit_edge ], [ %input.067.i, %if.then5.for.body.i22_crit_edge ]
  %state.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 4
  %79 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %state.i, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %80, label %for.body.i22.for.inc.i27_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %for.body.i22.sw.bb9.i_crit_edge
    i32 2, label %for.body.i22.sw.bb25.i_crit_edge
    i32 3, label %for.body.i22.sw.bb28.i_crit_edge
  ]

for.body.i22.sw.bb28.i_crit_edge:                 ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb28.i

for.body.i22.sw.bb25.i_crit_edge:                 ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb25.i

for.body.i22.sw.bb9.i_crit_edge:                  ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9.i

for.body.i22.for.inc.i27_crit_edge:               ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i27

sw.bb.i:                                          ; preds = %for.body.i22
  %82 = load i64, ptr @phys_curr, align 8
  %mask.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 1
  %83 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %mask.i, align 8
  %and.i23 = and i64 %84, %82
  %value.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 2
  %85 = ptrtoint ptr %value.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %value.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i23, i64 %86)
  %cmp1.not.i = icmp eq i64 %and.i23, %86
  br i1 %cmp1.not.i, label %if.end.i24, label %sw.bb.i.for.inc.i27_crit_edge

sw.bb.i.for.inc.i27_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i27

if.end.i24:                                       ; preds = %sw.bb.i
  %87 = load i64, ptr @phys_prev, align 8
  %and3.i = and i64 %87, %84
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i, i64 %and.i23)
  %cmp5.i = icmp eq i64 %and3.i, %and.i23
  br i1 %cmp5.i, label %if.end.i24.for.inc.i27_crit_edge, label %if.end7.i

if.end.i24.for.inc.i27_crit_edge:                 ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i27

if.end7.i:                                        ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #13
  %rise_timer.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 7
  %88 = ptrtoint ptr %rise_timer.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %rise_timer.i, align 2
  %89 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %state.i, align 4
  br label %sw.bb9.i

sw.bb9.i:                                         ; preds = %if.end7.i, %for.body.i22.sw.bb9.i_crit_edge
  %90 = load i64, ptr @phys_curr, align 8
  %mask10.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 1
  %91 = ptrtoint ptr %mask10.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %mask10.i, align 8
  %and11.i = and i64 %92, %90
  %value12.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 2
  %93 = ptrtoint ptr %value12.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %value12.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and11.i, i64 %94)
  %cmp13.not.i = icmp eq i64 %and11.i, %94
  br i1 %cmp13.not.i, label %if.end16.i, label %if.then14.i

if.then14.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %state.i, align 4
  br label %for.inc.i27

if.end16.i:                                       ; preds = %sw.bb9.i
  %rise_timer17.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 7
  %96 = ptrtoint ptr %rise_timer17.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %rise_timer17.i, align 2
  %rise_time.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 5
  %98 = ptrtoint ptr %rise_time.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rise_time.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %99)
  %cmp19.i = icmp ult i8 %97, %99
  br i1 %cmp19.i, label %if.then21.i, label %if.end23.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 false, ptr @inputs_stable, align 1
  %inc.i25 = add nuw i8 %97, 1
  %100 = ptrtoint ptr %rise_timer17.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %inc.i25, ptr %rise_timer17.i, align 2
  br label %for.inc.i27

if.end23.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %high_timer.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 9
  %101 = ptrtoint ptr %high_timer.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %high_timer.i, align 4
  %102 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %state.i, align 4
  br label %sw.bb25.i

sw.bb25.i:                                        ; preds = %if.end23.i, %for.body.i22.sw.bb25.i_crit_edge
  %103 = load i64, ptr @phys_curr, align 8
  %mask.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 1
  %104 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %mask.i.i, align 8
  %and.i.i = and i64 %105, %103
  %value.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 2
  %106 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %value.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %107)
  %cmp.i.i = icmp eq i64 %and.i.i, %107
  br i1 %cmp.i.i, label %if.then.i.i, label %input_state_high.exit.i

if.then.i.i:                                      ; preds = %sw.bb25.i
  %type.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 3
  %108 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %type.i.i, align 8
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %109, label %if.then.i.i.for.inc.i27_crit_edge [
    i32 0, label %land.lhs.true.i.i
    i32 1, label %if.then13.i.i
  ]

if.then.i.i.for.inc.i27_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i27

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %high_timer.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 9
  %111 = ptrtoint ptr %high_timer.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %high_timer.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp2.i.i = icmp eq i8 %112, 0
  br i1 %cmp2.i.i, label %if.then4.i.i, label %land.lhs.true.i.i.for.inc.i27_crit_edge

land.lhs.true.i.i.for.inc.i27_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i27

if.then4.i.i:                                     ; preds = %land.lhs.true.i.i
  %113 = ptrtoint ptr %high_timer.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %high_timer.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 10
  %114 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %u.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %115, null
  br i1 %tobool.not.i.i, label %if.then4.i.i.for.inc.i27_crit_edge, label %if.then6.i.i

if.then4.i.i.for.inc.i27_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i27

if.then6.i.i:                                     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %press_data.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 10, i32 0, i32 2
  %116 = ptrtoint ptr %press_data.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %press_data.i.i, align 8
  tail call void %115(i32 noundef %117) #11
  br label %for.inc.i27

if.then13.i.i:                                    ; preds = %if.then.i.i
  store i1 true, ptr @keypressed, align 1
  %high_timer14.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 9
  %118 = ptrtoint ptr %high_timer14.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %high_timer14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp16.i.i = icmp eq i8 %119, 0
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.then13.i.i.if.end24.i.i_crit_edge

if.then13.i.i.if.end24.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i.i

if.then18.i.i:                                    ; preds = %if.then13.i.i
  %u19.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 10
  %120 = ptrtoint ptr %u19.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %u19.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool21.not.i.i = icmp eq i8 %121, 0
  br i1 %tobool21.not.i.i, label %if.then18.i.i.if.end24.i.i_crit_edge, label %if.then22.i.i

if.then18.i.i.if.end24.i.i_crit_edge:             ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i.i

if.then22.i.i:                                    ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @keypad_send_key(ptr noundef %u19.i.i) #11
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then22.i.i, %if.then18.i.i.if.end24.i.i_crit_edge, %if.then13.i.i.if.end24.i.i_crit_edge
  %repeat_str.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 10, i32 0, i32 2
  %122 = ptrtoint ptr %repeat_str.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %repeat_str.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool27.not.i.i = icmp eq i8 %123, 0
  br i1 %tobool27.not.i.i, label %if.end24.i.i.if.end43.i.i_crit_edge, label %if.then28.i.i

if.end24.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i.i

if.then28.i.i:                                    ; preds = %if.end24.i.i
  %124 = ptrtoint ptr %high_timer14.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %high_timer14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %125)
  %cmp35.i.i = icmp ugt i8 %125, 9
  br i1 %cmp35.i.i, label %if.then37.i.i, label %if.then28.i.i.if.end42.i.i_crit_edge

if.then28.i.i.if.end42.i.i_crit_edge:             ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i.i

if.then37.i.i:                                    ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i8 %125, -2
  %126 = ptrtoint ptr %high_timer14.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %sub.i.i, ptr %high_timer14.i.i, align 4
  tail call fastcc void @keypad_send_key(ptr noundef %repeat_str.i.i) #11
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then37.i.i, %if.then28.i.i.if.end42.i.i_crit_edge
  store i1 false, ptr @inputs_stable, align 1
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.end42.i.i, %if.end24.i.i.if.end43.i.i_crit_edge
  %127 = ptrtoint ptr %high_timer14.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %high_timer14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %128)
  %cmp46.not.i.i = icmp eq i8 %128, -1
  br i1 %cmp46.not.i.i, label %if.end43.i.i.for.inc.i27_crit_edge, label %if.then48.i.i

if.end43.i.i.for.inc.i27_crit_edge:               ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i27

if.then48.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc50.i.i = add nuw i8 %128, 1
  %129 = ptrtoint ptr %high_timer14.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %inc50.i.i, ptr %high_timer14.i.i, align 4
  br label %for.inc.i27

input_state_high.exit.i:                          ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 3, ptr %state.i, align 4
  %fall_timer.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 8
  %131 = ptrtoint ptr %fall_timer.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %fall_timer.i.i, align 1
  br label %sw.bb28.i

sw.bb28.i:                                        ; preds = %input_state_high.exit.i, %for.body.i22.sw.bb28.i_crit_edge
  %132 = load i64, ptr @phys_curr, align 8
  %mask.i51.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 1
  %133 = ptrtoint ptr %mask.i51.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %mask.i51.i, align 8
  %and.i52.i = and i64 %134, %132
  %value.i53.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 2
  %135 = ptrtoint ptr %value.i53.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %value.i53.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i52.i, i64 %136)
  %cmp.i54.i = icmp eq i64 %and.i52.i, %136
  br i1 %cmp.i54.i, label %if.then.i56.i, label %if.else.i.i

if.then.i56.i:                                    ; preds = %sw.bb28.i
  %type.i55.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 3
  %137 = ptrtoint ptr %type.i55.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %type.i55.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %138)
  %cmp1.i.i = icmp eq i32 %138, 1
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.then.i56.i.if.end21.i.i_crit_edge

if.then.i56.i.if.end21.i.i_crit_edge:             ; preds = %if.then.i56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i.i

if.then2.i.i:                                     ; preds = %if.then.i56.i
  store i1 true, ptr @keypressed, align 1
  %repeat_str.i57.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 10, i32 0, i32 2
  %139 = ptrtoint ptr %repeat_str.i57.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %repeat_str.i57.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i58.i = icmp eq i8 %140, 0
  br i1 %tobool.not.i58.i, label %if.then2.i.i.if.end13.i.i_crit_edge, label %if.then3.i.i

if.then2.i.i.if.end13.i.i_crit_edge:              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i

if.then3.i.i:                                     ; preds = %if.then2.i.i
  %high_timer.i59.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 9
  %141 = ptrtoint ptr %high_timer.i59.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %high_timer.i59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %142)
  %cmp7.i.i = icmp ugt i8 %142, 9
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.then3.i.i.if.end.i.i_crit_edge

if.then3.i.i.if.end.i.i_crit_edge:                ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then9.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i60.i = add i8 %142, -2
  %143 = ptrtoint ptr %high_timer.i59.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %sub.i60.i, ptr %high_timer.i59.i, align 4
  tail call fastcc void @keypad_send_key(ptr noundef %repeat_str.i57.i) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then9.i.i, %if.then3.i.i.if.end.i.i_crit_edge
  store i1 false, ptr @inputs_stable, align 1
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end.i.i, %if.then2.i.i.if.end13.i.i_crit_edge
  %high_timer14.i61.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 9
  %144 = ptrtoint ptr %high_timer14.i61.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %high_timer14.i61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %145)
  %cmp16.not.i.i = icmp eq i8 %145, -1
  br i1 %cmp16.not.i.i, label %if.end13.i.i.if.end21.i.i_crit_edge, label %if.then18.i62.i

if.end13.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i.i

if.then18.i62.i:                                  ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i.i = add nuw i8 %145, 1
  %146 = ptrtoint ptr %high_timer14.i61.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %inc.i.i, ptr %high_timer14.i61.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then18.i62.i, %if.end13.i.i.if.end21.i.i_crit_edge, %if.then.i56.i.if.end21.i.i_crit_edge
  %147 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 2, ptr %state.i, align 4
  br label %for.inc.i27

if.else.i.i:                                      ; preds = %sw.bb28.i
  %fall_timer.i64.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 8
  %148 = ptrtoint ptr %fall_timer.i64.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %fall_timer.i64.i, align 1
  %fall_time.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 6
  %150 = ptrtoint ptr %fall_time.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %fall_time.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %149, i8 %151)
  %cmp24.not.i.i = icmp ult i8 %149, %151
  br i1 %cmp24.not.i.i, label %if.else53.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.else.i.i
  %type27.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 3
  %152 = ptrtoint ptr %type27.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %type27.i.i, align 8
  %154 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %153, label %if.then26.i.i.if.end51.i.i_crit_edge [
    i32 0, label %if.then30.i.i
    i32 1, label %if.then41.i.i
  ]

if.then26.i.i.if.end51.i.i_crit_edge:             ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i.i

if.then30.i.i:                                    ; preds = %if.then26.i.i
  %release_fct32.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 10, i32 0, i32 1
  %155 = ptrtoint ptr %release_fct32.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %release_fct32.i.i, align 4
  %tobool33.not.i.i = icmp eq ptr %156, null
  br i1 %tobool33.not.i.i, label %if.then30.i.i.if.end51.i.i_crit_edge, label %if.then34.i.i

if.then30.i.i.if.end51.i.i_crit_edge:             ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i.i

if.then34.i.i:                                    ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %release_data.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 10, i32 0, i32 3
  %157 = ptrtoint ptr %release_data.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %release_data.i.i, align 4
  tail call void %156(i32 noundef %158) #11
  br label %if.end51.i.i

if.then41.i.i:                                    ; preds = %if.then26.i.i
  %release_str43.i.i = getelementptr inbounds %struct.logical_input, ptr %input.069.i, i32 0, i32 10, i32 1
  %159 = ptrtoint ptr %release_str43.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %release_str43.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool46.not.i.i = icmp eq i8 %160, 0
  br i1 %tobool46.not.i.i, label %if.then41.i.i.if.end51.i.i_crit_edge, label %if.then47.i.i

if.then41.i.i.if.end51.i.i_crit_edge:             ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i.i

if.then47.i.i:                                    ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @keypad_send_key(ptr noundef %release_str43.i.i) #11
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then47.i.i, %if.then41.i.i.if.end51.i.i_crit_edge, %if.then34.i.i, %if.then30.i.i.if.end51.i.i_crit_edge, %if.then26.i.i.if.end51.i.i_crit_edge
  %161 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %state.i, align 4
  br label %for.inc.i27

if.else53.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc55.i.i = add nuw i8 %149, 1
  %162 = ptrtoint ptr %fall_timer.i64.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %inc55.i.i, ptr %fall_timer.i64.i, align 1
  store i1 false, ptr @inputs_stable, align 1
  br label %for.inc.i27

for.inc.i27:                                      ; preds = %if.else53.i.i, %if.end51.i.i, %if.end21.i.i, %if.then48.i.i, %if.end43.i.i.for.inc.i27_crit_edge, %if.then6.i.i, %if.then4.i.i.for.inc.i27_crit_edge, %land.lhs.true.i.i.for.inc.i27_crit_edge, %if.then.i.i.for.inc.i27_crit_edge, %if.then21.i, %if.then14.i, %if.end.i24.for.inc.i27_crit_edge, %sw.bb.i.for.inc.i27_crit_edge, %for.body.i22.for.inc.i27_crit_edge
  %163 = ptrtoint ptr %input.069.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %input.0.i = load ptr, ptr %input.069.i, align 4
  %cmp.not.i26 = icmp eq ptr %input.0.i, @logical_inputs
  br i1 %cmp.not.i26, label %for.inc.i27.if.end7_crit_edge, label %for.inc.i27.for.body.i22_crit_edge

for.inc.i27.for.body.i22_crit_edge:               ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i22

for.inc.i27.if.end7_crit_edge:                    ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %for.inc.i27.if.end7_crit_edge, %lor.lhs.false.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %.b19.pr = load i1, ptr @keypressed, align 1
  br i1 %.b19.pr, label %land.lhs.true9, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true9:                                   ; preds = %if.end7
  %164 = load i8, ptr @lcd, align 4, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool10.not = icmp eq i8 %164, 0
  br i1 %tobool10.not, label %land.lhs.true9.if.end16_crit_edge, label %land.lhs.true12

land.lhs.true9.if.end16_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %165 = load i8, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 1), align 1, !range !276
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool13.not = icmp eq i8 %165, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.end16_crit_edge, label %if.then15

land.lhs.true12.if.end16_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  %166 = load ptr, ptr getelementptr inbounds (%struct.anon.70, ptr @lcd, i32 0, i32 5), align 4
  tail call void @charlcd_poke(ptr noundef %166) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true12.if.end16_crit_edge, %land.lhs.true9.if.end16_crit_edge, %if.end7.if.end16_crit_edge, %if.then5.if.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %167 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %167, 2
  %call17 = tail call i32 @mod_timer(ptr noundef nonnull @scan_timer, i32 noundef %add) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @charlcd_poke(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @keypad_send_key(ptr nocapture noundef readonly %string) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @keypad_available, i32 noundef 4) #11
  %0 = load volatile i32, ptr @keypad_available, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %keypad_buflen.promoted = load i32, ptr @keypad_buflen, align 4
  %smax = call i32 @llvm.smax.i32(i32 %keypad_buflen.promoted, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %keypad_buflen.promoted)
  %exitcond.not = icmp sgt i32 %keypad_buflen.promoted, 63
  br i1 %exitcond.not, label %while.cond.preheader.while.end_crit_edge, label %land.rhs

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %while.cond.preheader
  %1 = ptrtoint ptr %string to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %string, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %3 = load i32, ptr @keypad_start, align 4
  %inc = add nsw i32 %keypad_buflen.promoted, 1
  store i32 %inc, ptr @keypad_buflen, align 4
  %add = add i32 %3, %keypad_buflen.promoted
  %rem = srem i32 %add, 64
  %arrayidx = getelementptr [64 x i8], ptr @keypad_buffer, i32 0, i32 %rem
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %2, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %smax)
  %exitcond.1.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.1.not, label %while.body.while.end_crit_edge, label %land.rhs.1

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.1:                                       ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %string, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not.1 = icmp eq i8 %6, 0
  br i1 %tobool2.not.1, label %land.rhs.1.while.end_crit_edge, label %while.body.1

land.rhs.1.while.end_crit_edge:                   ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.1:                                     ; preds = %land.rhs.1
  %7 = load i32, ptr @keypad_start, align 4
  %inc.1 = add nsw i32 %keypad_buflen.promoted, 2
  store i32 %inc.1, ptr @keypad_buflen, align 4
  %add.1 = add i32 %7, %inc
  %rem.1 = srem i32 %add.1, 64
  %arrayidx.1 = getelementptr [64 x i8], ptr @keypad_buffer, i32 0, i32 %rem.1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %6, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.1, i32 %smax)
  %exitcond.2.not = icmp eq i32 %inc.1, %smax
  br i1 %exitcond.2.not, label %while.body.1.while.end_crit_edge, label %land.rhs.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.2:                                       ; preds = %while.body.1
  %incdec.ptr.1 = getelementptr i8, ptr %string, i32 2
  %9 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not.2 = icmp eq i8 %10, 0
  br i1 %tobool2.not.2, label %land.rhs.2.while.end_crit_edge, label %while.body.2

land.rhs.2.while.end_crit_edge:                   ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.2:                                     ; preds = %land.rhs.2
  %11 = load i32, ptr @keypad_start, align 4
  %inc.2 = add nsw i32 %keypad_buflen.promoted, 3
  store i32 %inc.2, ptr @keypad_buflen, align 4
  %add.2 = add i32 %11, %inc.1
  %rem.2 = srem i32 %add.2, 64
  %arrayidx.2 = getelementptr [64 x i8], ptr @keypad_buffer, i32 0, i32 %rem.2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.2, i32 %smax)
  %exitcond.3.not = icmp eq i32 %inc.2, %smax
  br i1 %exitcond.3.not, label %while.body.2.while.end_crit_edge, label %land.rhs.3

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.3:                                       ; preds = %while.body.2
  %incdec.ptr.2 = getelementptr i8, ptr %string, i32 3
  %13 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not.3 = icmp eq i8 %14, 0
  br i1 %tobool2.not.3, label %land.rhs.3.while.end_crit_edge, label %while.body.3

land.rhs.3.while.end_crit_edge:                   ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.3:                                     ; preds = %land.rhs.3
  %15 = load i32, ptr @keypad_start, align 4
  %inc.3 = add nsw i32 %keypad_buflen.promoted, 4
  store i32 %inc.3, ptr @keypad_buflen, align 4
  %add.3 = add i32 %15, %inc.2
  %rem.3 = srem i32 %add.3, 64
  %arrayidx.3 = getelementptr [64 x i8], ptr @keypad_buffer, i32 0, i32 %rem.3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.3, i32 %smax)
  %exitcond.4.not = icmp eq i32 %inc.3, %smax
  br i1 %exitcond.4.not, label %while.body.3.while.end_crit_edge, label %land.rhs.4

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.4:                                       ; preds = %while.body.3
  %incdec.ptr.3 = getelementptr i8, ptr %string, i32 4
  %17 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.4 = icmp eq i8 %18, 0
  br i1 %tobool2.not.4, label %land.rhs.4.while.end_crit_edge, label %while.body.4

land.rhs.4.while.end_crit_edge:                   ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.4:                                     ; preds = %land.rhs.4
  %19 = load i32, ptr @keypad_start, align 4
  %inc.4 = add nsw i32 %keypad_buflen.promoted, 5
  store i32 %inc.4, ptr @keypad_buflen, align 4
  %add.4 = add i32 %19, %inc.3
  %rem.4 = srem i32 %add.4, 64
  %arrayidx.4 = getelementptr [64 x i8], ptr @keypad_buffer, i32 0, i32 %rem.4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.4, i32 %smax)
  %exitcond.5.not = icmp eq i32 %inc.4, %smax
  br i1 %exitcond.5.not, label %while.body.4.while.end_crit_edge, label %land.rhs.5

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.5:                                       ; preds = %while.body.4
  %incdec.ptr.4 = getelementptr i8, ptr %string, i32 5
  %21 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool2.not.5 = icmp eq i8 %22, 0
  br i1 %tobool2.not.5, label %land.rhs.5.while.end_crit_edge, label %while.body.5

land.rhs.5.while.end_crit_edge:                   ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.5:                                     ; preds = %land.rhs.5
  %23 = load i32, ptr @keypad_start, align 4
  %inc.5 = add nsw i32 %keypad_buflen.promoted, 6
  store i32 %inc.5, ptr @keypad_buflen, align 4
  %add.5 = add i32 %23, %inc.4
  %rem.5 = srem i32 %add.5, 64
  %arrayidx.5 = getelementptr [64 x i8], ptr @keypad_buffer, i32 0, i32 %rem.5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %22, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.5, i32 %smax)
  %exitcond.6.not = icmp eq i32 %inc.5, %smax
  br i1 %exitcond.6.not, label %while.body.5.while.end_crit_edge, label %land.rhs.6

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.6:                                       ; preds = %while.body.5
  %incdec.ptr.5 = getelementptr i8, ptr %string, i32 6
  %25 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool2.not.6 = icmp eq i8 %26, 0
  br i1 %tobool2.not.6, label %land.rhs.6.while.end_crit_edge, label %while.body.6

land.rhs.6.while.end_crit_edge:                   ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.6:                                     ; preds = %land.rhs.6
  %27 = load i32, ptr @keypad_start, align 4
  %inc.6 = add nsw i32 %keypad_buflen.promoted, 7
  store i32 %inc.6, ptr @keypad_buflen, align 4
  %add.6 = add i32 %27, %inc.5
  %rem.6 = srem i32 %add.6, 64
  %arrayidx.6 = getelementptr [64 x i8], ptr @keypad_buffer, i32 0, i32 %rem.6
  %28 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %26, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.6, i32 %smax)
  %exitcond.7.not = icmp eq i32 %inc.6, %smax
  br i1 %exitcond.7.not, label %while.body.6.while.end_crit_edge, label %land.rhs.7

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.7:                                       ; preds = %while.body.6
  %incdec.ptr.6 = getelementptr i8, ptr %string, i32 7
  %29 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool2.not.7 = icmp eq i8 %30, 0
  br i1 %tobool2.not.7, label %land.rhs.7.while.end_crit_edge, label %while.body.7

land.rhs.7.while.end_crit_edge:                   ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.7:                                     ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #13
  %31 = load i32, ptr @keypad_start, align 4
  %inc.7 = add nsw i32 %keypad_buflen.promoted, 8
  store i32 %inc.7, ptr @keypad_buflen, align 4
  %add.7 = add i32 %31, %inc.6
  %rem.7 = srem i32 %add.7, 64
  %arrayidx.7 = getelementptr [64 x i8], ptr @keypad_buffer, i32 0, i32 %rem.7
  %32 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %30, ptr %arrayidx.7, align 1
  br label %while.end

while.end:                                        ; preds = %while.body.7, %land.rhs.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %land.rhs.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %land.rhs.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %land.rhs.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %land.rhs.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %land.rhs.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %land.rhs.1.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @__wake_up(ptr noundef nonnull @keypad_read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !59, !60, !62, !64, !65, !67, !69, !70, !72, !74, !75, !77, !79, !80, !82, !84, !85, !87, !89, !90, !92, !94, !96, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !157, !159, !161, !162, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !208, !210, !211, !213, !215, !217, !219, !220, !222, !224, !226, !228, !230, !232, !233, !235, !237, !239, !241, !243, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264}
!llvm.named.register.sp = !{!266}
!llvm.module.flags = !{!267, !268, !269, !270, !271, !272, !273, !274}
!llvm.ident = !{!275}

!0 = !{ptr @__UNIQUE_ID_description227, !1, !"__UNIQUE_ID_description227", i1 false, i1 false}
!1 = !{!"../drivers/auxdisplay/panel.c", i32 407, i32 1}
!2 = !{ptr @__param_parport, !3, !"__param_parport", i1 false, i1 false}
!3 = !{!"../drivers/auxdisplay/panel.c", i32 410, i32 1}
!4 = !{ptr @__UNIQUE_ID_parporttype228, !3, !"__UNIQUE_ID_parporttype228", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_parport229, !6, !"__UNIQUE_ID_parport229", i1 false, i1 false}
!6 = !{!"../drivers/auxdisplay/panel.c", i32 411, i32 1}
!7 = !{ptr @__param_profile, !8, !"__param_profile", i1 false, i1 false}
!8 = !{!"../drivers/auxdisplay/panel.c", i32 414, i32 1}
!9 = !{ptr @__UNIQUE_ID_profiletype230, !8, !"__UNIQUE_ID_profiletype230", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_profile231, !11, !"__UNIQUE_ID_profile231", i1 false, i1 false}
!11 = !{!"../drivers/auxdisplay/panel.c", i32 415, i32 1}
!12 = !{ptr @__param_keypad_type, !13, !"__param_keypad_type", i1 false, i1 false}
!13 = !{!"../drivers/auxdisplay/panel.c", i32 420, i32 1}
!14 = !{ptr @__UNIQUE_ID_keypad_typetype232, !13, !"__UNIQUE_ID_keypad_typetype232", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_keypad_type233, !16, !"__UNIQUE_ID_keypad_type233", i1 false, i1 false}
!16 = !{!"../drivers/auxdisplay/panel.c", i32 421, i32 1}
!17 = !{ptr @__param_lcd_type, !18, !"__param_lcd_type", i1 false, i1 false}
!18 = !{!"../drivers/auxdisplay/panel.c", i32 425, i32 1}
!19 = !{ptr @__UNIQUE_ID_lcd_typetype234, !18, !"__UNIQUE_ID_lcd_typetype234", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_lcd_type235, !21, !"__UNIQUE_ID_lcd_type235", i1 false, i1 false}
!21 = !{!"../drivers/auxdisplay/panel.c", i32 426, i32 1}
!22 = !{ptr @__param_lcd_height, !23, !"__param_lcd_height", i1 false, i1 false}
!23 = !{!"../drivers/auxdisplay/panel.c", i32 430, i32 1}
!24 = !{ptr @__UNIQUE_ID_lcd_heighttype236, !23, !"__UNIQUE_ID_lcd_heighttype236", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_lcd_height237, !26, !"__UNIQUE_ID_lcd_height237", i1 false, i1 false}
!26 = !{!"../drivers/auxdisplay/panel.c", i32 431, i32 1}
!27 = !{ptr @__param_lcd_width, !28, !"__param_lcd_width", i1 false, i1 false}
!28 = !{!"../drivers/auxdisplay/panel.c", i32 434, i32 1}
!29 = !{ptr @__UNIQUE_ID_lcd_widthtype238, !28, !"__UNIQUE_ID_lcd_widthtype238", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_lcd_width239, !31, !"__UNIQUE_ID_lcd_width239", i1 false, i1 false}
!31 = !{!"../drivers/auxdisplay/panel.c", i32 435, i32 1}
!32 = !{ptr @__param_lcd_bwidth, !33, !"__param_lcd_bwidth", i1 false, i1 false}
!33 = !{!"../drivers/auxdisplay/panel.c", i32 438, i32 1}
!34 = !{ptr @__UNIQUE_ID_lcd_bwidthtype240, !33, !"__UNIQUE_ID_lcd_bwidthtype240", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_lcd_bwidth241, !36, !"__UNIQUE_ID_lcd_bwidth241", i1 false, i1 false}
!36 = !{!"../drivers/auxdisplay/panel.c", i32 439, i32 1}
!37 = !{ptr @__param_lcd_hwidth, !38, !"__param_lcd_hwidth", i1 false, i1 false}
!38 = !{!"../drivers/auxdisplay/panel.c", i32 442, i32 1}
!39 = !{ptr @__UNIQUE_ID_lcd_hwidthtype242, !38, !"__UNIQUE_ID_lcd_hwidthtype242", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_lcd_hwidth243, !41, !"__UNIQUE_ID_lcd_hwidth243", i1 false, i1 false}
!41 = !{!"../drivers/auxdisplay/panel.c", i32 443, i32 1}
!42 = !{ptr @__param_lcd_charset, !43, !"__param_lcd_charset", i1 false, i1 false}
!43 = !{!"../drivers/auxdisplay/panel.c", i32 446, i32 1}
!44 = !{ptr @__UNIQUE_ID_lcd_charsettype244, !43, !"__UNIQUE_ID_lcd_charsettype244", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_lcd_charset245, !46, !"__UNIQUE_ID_lcd_charset245", i1 false, i1 false}
!46 = !{!"../drivers/auxdisplay/panel.c", i32 447, i32 1}
!47 = !{ptr @__param_lcd_proto, !48, !"__param_lcd_proto", i1 false, i1 false}
!48 = !{!"../drivers/auxdisplay/panel.c", i32 450, i32 1}
!49 = !{ptr @__UNIQUE_ID_lcd_prototype246, !48, !"__UNIQUE_ID_lcd_prototype246", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_lcd_proto247, !51, !"__UNIQUE_ID_lcd_proto247", i1 false, i1 false}
!51 = !{!"../drivers/auxdisplay/panel.c", i32 451, i32 1}
!52 = !{ptr @__param_lcd_e_pin, !53, !"__param_lcd_e_pin", i1 false, i1 false}
!53 = !{!"../drivers/auxdisplay/panel.c", i32 464, i32 1}
!54 = !{ptr @__UNIQUE_ID_lcd_e_pintype248, !53, !"__UNIQUE_ID_lcd_e_pintype248", i1 false, i1 false}
!55 = !{ptr @__UNIQUE_ID_lcd_e_pin249, !56, !"__UNIQUE_ID_lcd_e_pin249", i1 false, i1 false}
!56 = !{!"../drivers/auxdisplay/panel.c", i32 465, i32 1}
!57 = !{ptr @__param_lcd_rs_pin, !58, !"__param_lcd_rs_pin", i1 false, i1 false}
!58 = !{!"../drivers/auxdisplay/panel.c", i32 469, i32 1}
!59 = !{ptr @__UNIQUE_ID_lcd_rs_pintype250, !58, !"__UNIQUE_ID_lcd_rs_pintype250", i1 false, i1 false}
!60 = !{ptr @__UNIQUE_ID_lcd_rs_pin251, !61, !"__UNIQUE_ID_lcd_rs_pin251", i1 false, i1 false}
!61 = !{!"../drivers/auxdisplay/panel.c", i32 470, i32 1}
!62 = !{ptr @__param_lcd_rw_pin, !63, !"__param_lcd_rw_pin", i1 false, i1 false}
!63 = !{!"../drivers/auxdisplay/panel.c", i32 474, i32 1}
!64 = !{ptr @__UNIQUE_ID_lcd_rw_pintype252, !63, !"__UNIQUE_ID_lcd_rw_pintype252", i1 false, i1 false}
!65 = !{ptr @__UNIQUE_ID_lcd_rw_pin253, !66, !"__UNIQUE_ID_lcd_rw_pin253", i1 false, i1 false}
!66 = !{!"../drivers/auxdisplay/panel.c", i32 475, i32 1}
!67 = !{ptr @__param_lcd_cl_pin, !68, !"__param_lcd_cl_pin", i1 false, i1 false}
!68 = !{!"../drivers/auxdisplay/panel.c", i32 479, i32 1}
!69 = !{ptr @__UNIQUE_ID_lcd_cl_pintype254, !68, !"__UNIQUE_ID_lcd_cl_pintype254", i1 false, i1 false}
!70 = !{ptr @__UNIQUE_ID_lcd_cl_pin255, !71, !"__UNIQUE_ID_lcd_cl_pin255", i1 false, i1 false}
!71 = !{!"../drivers/auxdisplay/panel.c", i32 480, i32 1}
!72 = !{ptr @__param_lcd_da_pin, !73, !"__param_lcd_da_pin", i1 false, i1 false}
!73 = !{!"../drivers/auxdisplay/panel.c", i32 484, i32 1}
!74 = !{ptr @__UNIQUE_ID_lcd_da_pintype256, !73, !"__UNIQUE_ID_lcd_da_pintype256", i1 false, i1 false}
!75 = !{ptr @__UNIQUE_ID_lcd_da_pin257, !76, !"__UNIQUE_ID_lcd_da_pin257", i1 false, i1 false}
!76 = !{!"../drivers/auxdisplay/panel.c", i32 485, i32 1}
!77 = !{ptr @__param_lcd_bl_pin, !78, !"__param_lcd_bl_pin", i1 false, i1 false}
!78 = !{!"../drivers/auxdisplay/panel.c", i32 489, i32 1}
!79 = !{ptr @__UNIQUE_ID_lcd_bl_pintype258, !78, !"__UNIQUE_ID_lcd_bl_pintype258", i1 false, i1 false}
!80 = !{ptr @__UNIQUE_ID_lcd_bl_pin259, !81, !"__UNIQUE_ID_lcd_bl_pin259", i1 false, i1 false}
!81 = !{!"../drivers/auxdisplay/panel.c", i32 490, i32 1}
!82 = !{ptr @__param_lcd_enabled, !83, !"__param_lcd_enabled", i1 false, i1 false}
!83 = !{!"../drivers/auxdisplay/panel.c", i32 496, i32 1}
!84 = !{ptr @__UNIQUE_ID_lcd_enabledtype260, !83, !"__UNIQUE_ID_lcd_enabledtype260", i1 false, i1 false}
!85 = !{ptr @__UNIQUE_ID_lcd_enabled261, !86, !"__UNIQUE_ID_lcd_enabled261", i1 false, i1 false}
!86 = !{!"../drivers/auxdisplay/panel.c", i32 497, i32 1}
!87 = !{ptr @__param_keypad_enabled, !88, !"__param_keypad_enabled", i1 false, i1 false}
!88 = !{!"../drivers/auxdisplay/panel.c", i32 500, i32 1}
!89 = !{ptr @__UNIQUE_ID_keypad_enabledtype262, !88, !"__UNIQUE_ID_keypad_enabledtype262", i1 false, i1 false}
!90 = !{ptr @__UNIQUE_ID_keypad_enabled263, !91, !"__UNIQUE_ID_keypad_enabled263", i1 false, i1 false}
!91 = !{!"../drivers/auxdisplay/panel.c", i32 501, i32 1}
!92 = !{ptr @__initcall__kmod_panel__264_1736_panel_init_module6, !93, !"__initcall__kmod_panel__264_1736_panel_init_module6", i1 false, i1 false}
!93 = !{!"../drivers/auxdisplay/panel.c", i32 1736, i32 1}
!94 = !{ptr @__exitcall_panel_cleanup_module, !95, !"__exitcall_panel_cleanup_module", i1 false, i1 false}
!95 = !{!"../drivers/auxdisplay/panel.c", i32 1737, i32 1}
!96 = !{ptr @__UNIQUE_ID_author265, !97, !"__UNIQUE_ID_author265", i1 false, i1 false}
!97 = !{!"../drivers/auxdisplay/panel.c", i32 1738, i32 1}
!98 = !{ptr @__UNIQUE_ID_file266, !99, !"__UNIQUE_ID_file266", i1 false, i1 false}
!99 = !{!"../drivers/auxdisplay/panel.c", i32 1739, i32 1}
!100 = !{ptr @__UNIQUE_ID_license267, !99, !"__UNIQUE_ID_license267", i1 false, i1 false}
!101 = !{ptr @__param_str_parport, !3, !"__param_str_parport", i1 false, i1 false}
!102 = !{ptr @parport, !103, !"parport", i1 false, i1 false}
!103 = !{!"../drivers/auxdisplay/panel.c", i32 409, i32 12}
!104 = !{ptr @__param_str_profile, !8, !"__param_str_profile", i1 false, i1 false}
!105 = !{ptr @profile, !106, !"profile", i1 false, i1 false}
!106 = !{!"../drivers/auxdisplay/panel.c", i32 413, i32 12}
!107 = !{ptr @__param_str_keypad_type, !13, !"__param_str_keypad_type", i1 false, i1 false}
!108 = !{ptr @keypad_type, !109, !"keypad_type", i1 false, i1 false}
!109 = !{!"../drivers/auxdisplay/panel.c", i32 419, i32 12}
!110 = !{ptr @__param_str_lcd_type, !18, !"__param_str_lcd_type", i1 false, i1 false}
!111 = !{ptr @lcd_type, !112, !"lcd_type", i1 false, i1 false}
!112 = !{!"../drivers/auxdisplay/panel.c", i32 424, i32 12}
!113 = !{ptr @__param_str_lcd_height, !23, !"__param_str_lcd_height", i1 false, i1 false}
!114 = !{ptr @lcd_height, !115, !"lcd_height", i1 false, i1 false}
!115 = !{!"../drivers/auxdisplay/panel.c", i32 429, i32 12}
!116 = !{ptr @__param_str_lcd_width, !28, !"__param_str_lcd_width", i1 false, i1 false}
!117 = !{ptr @lcd_width, !118, !"lcd_width", i1 false, i1 false}
!118 = !{!"../drivers/auxdisplay/panel.c", i32 433, i32 12}
!119 = !{ptr @__param_str_lcd_bwidth, !33, !"__param_str_lcd_bwidth", i1 false, i1 false}
!120 = !{ptr @lcd_bwidth, !121, !"lcd_bwidth", i1 false, i1 false}
!121 = !{!"../drivers/auxdisplay/panel.c", i32 437, i32 12}
!122 = !{ptr @__param_str_lcd_hwidth, !38, !"__param_str_lcd_hwidth", i1 false, i1 false}
!123 = !{ptr @lcd_hwidth, !124, !"lcd_hwidth", i1 false, i1 false}
!124 = !{!"../drivers/auxdisplay/panel.c", i32 441, i32 12}
!125 = !{ptr @__param_str_lcd_charset, !43, !"__param_str_lcd_charset", i1 false, i1 false}
!126 = !{ptr @lcd_charset, !127, !"lcd_charset", i1 false, i1 false}
!127 = !{!"../drivers/auxdisplay/panel.c", i32 445, i32 12}
!128 = !{ptr @__param_str_lcd_proto, !48, !"__param_str_lcd_proto", i1 false, i1 false}
!129 = !{ptr @lcd_proto, !130, !"lcd_proto", i1 false, i1 false}
!130 = !{!"../drivers/auxdisplay/panel.c", i32 449, i32 12}
!131 = !{ptr @__param_str_lcd_e_pin, !53, !"__param_str_lcd_e_pin", i1 false, i1 false}
!132 = !{ptr @lcd_e_pin, !133, !"lcd_e_pin", i1 false, i1 false}
!133 = !{!"../drivers/auxdisplay/panel.c", i32 463, i32 12}
!134 = !{ptr @__param_str_lcd_rs_pin, !58, !"__param_str_lcd_rs_pin", i1 false, i1 false}
!135 = !{ptr @lcd_rs_pin, !136, !"lcd_rs_pin", i1 false, i1 false}
!136 = !{!"../drivers/auxdisplay/panel.c", i32 468, i32 12}
!137 = !{ptr @__param_str_lcd_rw_pin, !63, !"__param_str_lcd_rw_pin", i1 false, i1 false}
!138 = !{ptr @lcd_rw_pin, !139, !"lcd_rw_pin", i1 false, i1 false}
!139 = !{!"../drivers/auxdisplay/panel.c", i32 473, i32 12}
!140 = !{ptr @__param_str_lcd_cl_pin, !68, !"__param_str_lcd_cl_pin", i1 false, i1 false}
!141 = !{ptr @lcd_cl_pin, !142, !"lcd_cl_pin", i1 false, i1 false}
!142 = !{!"../drivers/auxdisplay/panel.c", i32 478, i32 12}
!143 = !{ptr @__param_str_lcd_da_pin, !73, !"__param_str_lcd_da_pin", i1 false, i1 false}
!144 = !{ptr @lcd_da_pin, !145, !"lcd_da_pin", i1 false, i1 false}
!145 = !{!"../drivers/auxdisplay/panel.c", i32 483, i32 12}
!146 = !{ptr @__param_str_lcd_bl_pin, !78, !"__param_str_lcd_bl_pin", i1 false, i1 false}
!147 = !{ptr @lcd_bl_pin, !148, !"lcd_bl_pin", i1 false, i1 false}
!148 = !{!"../drivers/auxdisplay/panel.c", i32 488, i32 12}
!149 = !{ptr @__param_str_lcd_enabled, !83, !"__param_str_lcd_enabled", i1 false, i1 false}
!150 = !{ptr @lcd_enabled, !151, !"lcd_enabled", i1 false, i1 false}
!151 = !{!"../drivers/auxdisplay/panel.c", i32 495, i32 12}
!152 = !{ptr @__param_str_keypad_enabled, !88, !"__param_str_keypad_enabled", i1 false, i1 false}
!153 = !{ptr @keypad_enabled, !154, !"keypad_enabled", i1 false, i1 false}
!154 = !{!"../drivers/auxdisplay/panel.c", i32 499, i32 12}
!155 = !{ptr @.str, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/auxdisplay/panel.c", i32 1612, i32 10}
!157 = !{ptr @panel_driver, !158, !"panel_driver", i1 false, i1 false}
!158 = !{!"../drivers/auxdisplay/panel.c", i32 1611, i32 30}
!159 = !{ptr @.str.1, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/auxdisplay/panel.c", i32 1585, i32 3}
!161 = !{ptr @.str.2, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.3, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @panel_detach._entry, !160, !"_entry", i1 false, i1 false}
!164 = !{ptr @panel_detach._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @pprt, !166, !"pprt", i1 false, i1 false}
!166 = !{!"../drivers/auxdisplay/panel.c", i32 400, i32 26}
!167 = !{ptr @scan_timer, !168, !"scan_timer", i1 false, i1 false}
!168 = !{!"../drivers/auxdisplay/panel.c", i32 405, i32 26}
!169 = distinct !{null, !170, !"keypad", i1 false, i1 false}
!170 = !{!"../drivers/auxdisplay/panel.c", i32 191, i32 3}
!171 = !{ptr @.str.4, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/auxdisplay/panel.c", i32 1083, i32 10}
!173 = !{ptr @keypad_dev, !174, !"keypad_dev", i1 false, i1 false}
!174 = !{!"../drivers/auxdisplay/panel.c", i32 1081, i32 26}
!175 = !{ptr @keypad_fops, !176, !"keypad_fops", i1 false, i1 false}
!176 = !{!"../drivers/auxdisplay/panel.c", i32 1074, i32 37}
!177 = !{ptr @keypad_buflen, !178, !"keypad_buflen", i1 false, i1 false}
!178 = !{!"../drivers/auxdisplay/panel.c", i32 194, i32 12}
!179 = !{ptr @keypad_read_wait, !180, !"keypad_read_wait", i1 false, i1 false}
!180 = !{!"../drivers/auxdisplay/panel.c", i32 197, i32 26}
!181 = !{ptr @keypad_buffer, !182, !"keypad_buffer", i1 false, i1 false}
!182 = !{!"../drivers/auxdisplay/panel.c", i32 193, i32 13}
!183 = !{ptr @keypad_start, !184, !"keypad_start", i1 false, i1 false}
!184 = !{!"../drivers/auxdisplay/panel.c", i32 195, i32 12}
!185 = !{ptr @keypad_available, !186, !"keypad_available", i1 false, i1 false}
!186 = !{!"../drivers/auxdisplay/panel.c", i32 398, i32 17}
!187 = distinct !{null, !188, !"keypad_initialized", i1 false, i1 false}
!188 = !{!"../drivers/auxdisplay/panel.c", i32 402, i32 12}
!189 = !{ptr @lcd, !190, !"lcd", i1 false, i1 false}
!190 = !{!"../drivers/auxdisplay/panel.c", i32 218, i32 3}
!191 = !{ptr @.str.5, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/auxdisplay/panel.c", i32 1529, i32 3}
!193 = !{ptr @.str.6, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @panel_attach._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @panel_attach._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.8, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/auxdisplay/panel.c", i32 1540, i32 3}
!198 = !{ptr @panel_attach._entry.7, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @panel_attach._entry_ptr.9, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.11, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/auxdisplay/panel.c", i32 1546, i32 3}
!202 = !{ptr @panel_attach._entry.10, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @panel_attach._entry_ptr.12, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @selected_lcd_type, !205, !"selected_lcd_type", i1 false, i1 false}
!205 = !{!"../drivers/auxdisplay/panel.c", i32 221, i32 12}
!206 = !{ptr @charlcd_ops, !207, !"charlcd_ops", i1 false, i1 false}
!207 = !{!"../drivers/auxdisplay/panel.c", i32 811, i32 33}
!208 = !{ptr @.str.13, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/auxdisplay/panel.c", i32 404, i32 8}
!210 = !{ptr @pprt_lock, !209, !"pprt_lock", i1 false, i1 false}
!211 = !{ptr @bits, !212, !"bits", i1 false, i1 false}
!212 = !{!"../drivers/auxdisplay/panel.c", i32 575, i32 8}
!213 = !{ptr @lcd_char_conv_ks0074, !214, !"lcd_char_conv_ks0074", i1 false, i1 false}
!214 = !{!"../drivers/auxdisplay/panel.c", i32 504, i32 28}
!215 = !{ptr @lcd_bits, !216, !"lcd_bits", i1 false, i1 false}
!216 = !{!"../drivers/auxdisplay/panel.c", i32 250, i32 22}
!217 = !{ptr @keypad_init.__key, !218, !"__key", i1 false, i1 false}
!218 = !{!"../drivers/auxdisplay/panel.c", i32 1501, i32 2}
!219 = !{ptr @.str.14, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @keypad_profile, !221, !"keypad_profile", i1 false, i1 false}
!221 = !{!"../drivers/auxdisplay/panel.c", i32 573, i32 21}
!222 = !{ptr @old_keypad_profile, !223, !"old_keypad_profile", i1 false, i1 false}
!223 = !{!"../drivers/auxdisplay/panel.c", i32 540, i32 19}
!224 = !{ptr @scan_mask_i, !225, !"scan_mask_i", i1 false, i1 false}
!225 = !{!"../drivers/auxdisplay/panel.c", i32 126, i32 13}
!226 = !{ptr @scan_mask_o, !227, !"scan_mask_o", i1 false, i1 false}
!227 = !{!"../drivers/auxdisplay/panel.c", i32 124, i32 13}
!228 = !{ptr @logical_inputs, !229, !"logical_inputs", i1 false, i1 false}
!229 = !{!"../drivers/auxdisplay/panel.c", i32 164, i32 8}
!230 = !{ptr @init_scan_timer.__key, !231, !"__key", i1 false, i1 false}
!231 = !{!"../drivers/auxdisplay/panel.c", i32 1367, i32 2}
!232 = !{ptr @.str.15, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @phys_read, !234, !"phys_read", i1 false, i1 false}
!234 = !{!"../drivers/auxdisplay/panel.c", i32 178, i32 14}
!235 = !{ptr @phys_read_prev, !236, !"phys_read_prev", i1 false, i1 false}
!236 = !{!"../drivers/auxdisplay/panel.c", i32 180, i32 14}
!237 = distinct !{null, !238, !"inputs_stable", i1 false, i1 false}
!238 = !{!"../drivers/auxdisplay/panel.c", i32 186, i32 13}
!239 = !{ptr @phys_curr, !240, !"phys_curr", i1 false, i1 false}
!240 = !{!"../drivers/auxdisplay/panel.c", i32 182, i32 14}
!241 = !{ptr @phys_prev, !242, !"phys_prev", i1 false, i1 false}
!242 = !{!"../drivers/auxdisplay/panel.c", i32 184, i32 14}
!243 = distinct !{null, !244, !"keypressed", i1 false, i1 false}
!244 = !{!"../drivers/auxdisplay/panel.c", i32 196, i32 13}
!245 = !{ptr @.str.16, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/auxdisplay/panel.c", i32 1713, i32 3}
!247 = !{ptr @.str.17, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @panel_init_module._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @panel_init_module._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.19, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/auxdisplay/panel.c", i32 1719, i32 3}
!252 = !{ptr @panel_init_module._entry.18, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @panel_init_module._entry_ptr.20, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.22, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/auxdisplay/panel.c", i32 1724, i32 3}
!256 = !{ptr @panel_init_module._entry.21, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @panel_init_module._entry_ptr.23, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.25, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/auxdisplay/panel.c", i32 1727, i32 3}
!260 = !{ptr @panel_init_module._entry.24, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @panel_init_module._entry_ptr.26, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @new_keypad_profile, !263, !"new_keypad_profile", i1 false, i1 false}
!263 = !{!"../drivers/auxdisplay/panel.c", i32 551, i32 19}
!264 = !{ptr @nexcom_keypad_profile, !265, !"nexcom_keypad_profile", i1 false, i1 false}
!265 = !{!"../drivers/auxdisplay/panel.c", i32 564, i32 19}
!266 = !{!"sp"}
!267 = !{i32 1, !"wchar_size", i32 2}
!268 = !{i32 1, !"min_enum_size", i32 4}
!269 = !{i32 8, !"branch-target-enforcement", i32 0}
!270 = !{i32 8, !"sign-return-address", i32 0}
!271 = !{i32 8, !"sign-return-address-all", i32 0}
!272 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!273 = !{i32 7, !"uwtable", i32 1}
!274 = !{i32 7, !"frame-pointer", i32 2}
!275 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!276 = !{i8 0, i8 2}
!277 = !{i64 5940964}
!278 = !{i64 5941161}
!279 = !{i64 2153426394}
!280 = !{i64 2153882237, i64 2153882517, i64 2153882851, i64 2153883185}
!281 = !{i64 2148473049}
!282 = !{i64 2148387758, i64 2148387790, i64 2148387819, i64 2148387853, i64 2148387884, i64 2148387907}
!283 = !{i64 2148473278}
!284 = !{i64 2148384573, i64 2148384599, i64 2148384628, i64 2148384662, i64 2148384693, i64 2148384716}
!285 = !{i64 791005}
!286 = !{i64 788708}
!287 = !{i64 788518}
